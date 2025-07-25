import copy
import opsc
import oobb
import oobb_base
import yaml
import os
import scad_help
import math

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    parts = []

    typ = kwargs.get("typ", "")

    if typ == "":
        #setup    
        #typ = "all"
        typ = "fast"
        #typ = "manual"

    #oomp_mode = "project"
    oomp_mode = "oobb"

    if typ == "all":
        #no overwrite and filter
        filter = ""
        #filter = """
        filter = filter; save_type = "all"; navigation = True; overwrite = False; modes = ["3dpr"]; oomp_run = True
        #default
        #filter = ""; save_type = "all"; navigation = True; overwrite = True; modes = ["3dpr"]; oomp_run = True
    elif typ == "fast":
        filter = ""; save_type = "none"; navigation = True; overwrite = True; modes = ["3dpr"]; oomp_run = False
        #default
        #filter = ""; save_type = "none"; navigation = False; overwrite = True; modes = ["3dpr"]; oomp_run = False
    elif typ == "manual":
    #filter
        filter = ""
        #filter = "test"

    #save_type
        save_type = "none"
        #save_type = "all"
        
    #navigation        
        #navigation = False
        navigation = True    

    #overwrite
        overwrite = True
                
    #modes
        #modes = ["3dpr", "laser", "true"]
        modes = ["3dpr"]
        #modes = ["laser"]    

    #oomp_run
        oomp_run = True
        #oomp_run = False    

    #adding to kwargs
    kwargs["filter"] = filter
    kwargs["save_type"] = save_type
    kwargs["navigation"] = navigation
    kwargs["overwrite"] = overwrite
    kwargs["modes"] = modes
    kwargs["oomp_mode"] = oomp_mode
    kwargs["oomp_run"] = oomp_run
    
       
    # project_variables
    if True:
        pass
    
    # declare parts
    if True:

        directory_name = os.path.dirname(__file__) 
        directory_name = directory_name.replace("/", "\\")
        project_name = directory_name.split("\\")[-1]
        #max 60 characters
        length_max = 40
        if len(project_name) > length_max:
            project_name = project_name[:length_max]
            #if ends with a _ remove it 
            if project_name[-1] == "_":
                project_name = project_name[:-1]
                
        #defaults
        kwargs["size"] = "oobb"
        kwargs["width"] = 1
        kwargs["height"] = 1
        kwargs["thickness"] = 3
        #oomp_bits
        if oomp_mode == "project":
            kwargs["oomp_classification"] = "project"
            kwargs["oomp_type"] = "github"
            kwargs["oomp_size"] = "oomlout"
            kwargs["oomp_color"] = project_name
            kwargs["oomp_description_main"] = ""
            kwargs["oomp_description_extra"] = ""
            kwargs["oomp_manufacturer"] = ""
            kwargs["oomp_part_number"] = ""
        elif oomp_mode == "oobb":
            kwargs["oomp_classification"] = "oobb"
            kwargs["oomp_type"] = "part"
            kwargs["oomp_size"] = "tray"
            kwargs["oomp_color"] = ""
            kwargs["oomp_description_main"] = ""
            kwargs["oomp_description_extra"] = ""
            kwargs["oomp_manufacturer"] = ""
            kwargs["oomp_part_number"] = ""

        part_default = {} 
       
        part_default["project_name"] = project_name
        part_default["full_shift"] = [0, 0, 0]
        part_default["full_rotations"] = [0, 0, 0]
        

        extras = []
        extras.append("")
        

        depths = [12,15,21,30,45,60,75,90]
        #depths = [15]
        widths = [1,1.5,2,3,4,5,6,7,8,9,10,12,14,15]
        #widths = [3]
        heights = [1,1.5,2,3,4,5,6,7,8,9,10,12,14,15]
        #heights = [2]

        if False:
            depths = [60]
            widths = [2,6]
            heights = [2,6]

        #short
        #if True:
        if False:            
            widths = [7]
            heights = [1.5]
            depths = [90]

        for extra in extras:
            for depth in depths:
                for width in widths:
                    for height in heights:
                        part = copy.deepcopy(part_default)
                        p3 = copy.deepcopy(kwargs)
                        p3["width"] = width
                        p3["height"] = height
                        p3["thickness"] = depth
                        if extra != "":
                            p3["extra"] = extra
                        part["kwargs"] = p3
                        nam = "tray"
                        part["name"] = nam
                        if oomp_mode == "oobb":
                            p3["oomp_size"] = nam
                        parts.append(part)
    test = False
    #test = True

    if test:
        parts = []
        part = copy.deepcopy(part_default)
        p3 = copy.deepcopy(kwargs)
        p3["width"] = 2
        p3["height"] = 2
        p3["thickness"] = 90
        #p3["extra"] = ""
        #p3["extra"] = "magnet"
        p3["extra"] = "only_m3_hole"

        part["kwargs"] = p3
        nam = "tray"
        part["name"] = nam
        if oomp_mode == "oobb":
            p3["oomp_size"] = nam
        parts.append(part)


    kwargs["parts"] = parts

    scad_help.make_parts(**kwargs)

    #generate navigation
    if navigation:
        sort = []
        sort.append("name")
        sort.append("width")
        sort.append("height")
        sort.append("thickness")
        sort.append("extra")
        
        scad_help.generate_navigation(sort = sort)




def get_base(thing, **kwargs):

    prepare_print = kwargs.get("prepare_print", False)
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("thickness", 3)                    
    rot = kwargs.get("rot", [0, 0, 0])
    pos = kwargs.get("pos", [0, 0, 0])
    extra = kwargs.get("extra", "")
    
    #add plate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = f"oobb_plate"    
    p3["depth"] = depth
    p3["width"] = width + 1/15
    p3["height"] = height + 1/15
    #p3["holes"] = True         uncomment to include default holes
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    oobb_base.append_full(thing,**p3)
    
    #add hollow out 
    if True:
        thickness_bottom = 2
        thickness_wall = 1.5
        radius_sphere = 4        
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = f"sphere_rectangle"
        p3["radius"] = radius_sphere
        wid = width * 15 - 2 * thickness_wall
        hei = height * 15 - 2 * thickness_wall
        dep = depth + 45
        size = [wid, hei, dep]
        p3["size"] = size
        pos1 = copy.deepcopy(pos)
        pos1[0] += 0#60
        pos1[1] += 0
        pos1[2] += thickness_bottom
        p3["pos"] = pos1
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)

        
    #add counter sunk screws in corners
    if True:
        #add holes seperate
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_screw_countersunk"
        p3["radius_name"] = "m3"
        p3["clearance"] = "top"
        p3["depth"] = thickness_bottom        
        #p3["m"] = "#"
        pos1 = copy.deepcopy(pos)   
        pos1[2] += thickness_bottom      
        poss = []
        shift_x = (width-1) * 15 / 2
        shift_y = (height-1) * 15 / 2
        pos11 = copy.deepcopy(pos1)
        pos11[0] += -shift_x
        pos11[1] += -shift_y
        pos12 = copy.deepcopy(pos1)
        pos12[0] += shift_x
        pos12[1] += -shift_y
        pos13 = copy.deepcopy(pos1)
        pos13[0] += -shift_x
        pos13[1] += shift_y
        pos14 = copy.deepcopy(pos1)
        pos14[0] += shift_x
        pos14[1] += shift_y

        poss.append(pos11)
        poss.append(pos12)
        poss.append(pos13)
        poss.append(pos14)
        p3["pos"] = poss
        oobb_base.append_full(thing,**p3)

    
    #add holes seperate
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_holes"
    if extra == "countersunk":
        p3["shape"] = f"oobb_screw_countersunk"
    p3["both_holes"] = True  
    p3["depth"] = depth
    p3["holes"] = "perimeter"
    #p3["m"] = "#"
    pos1 = copy.deepcopy(pos)         
    p3["pos"] = pos1
    #oobb_base.append_full(thing,**p3)

    if prepare_print:
        #put into a rotation object
        components_second = copy.deepcopy(thing["components"])
        return_value_2 = {}
        return_value_2["type"]  = "rotation"
        return_value_2["typetype"]  = "p"
        pos1 = copy.deepcopy(pos)
        pos1[0] += 50
        return_value_2["pos"] = pos1
        return_value_2["rot"] = [180,0,0]
        return_value_2["objects"] = components_second
        
        thing["components"].append(return_value_2)

    
        #add slice # top
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "n"
        p3["shape"] = f"oobb_slice"
        pos1 = copy.deepcopy(pos)
        pos1[0] += -500/2
        pos1[1] += 0
        pos1[2] += -500/2        
        p3["pos"] = pos1
        #p3["m"] = "#"
        oobb_base.append_full(thing,**p3)

if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)