$fn = 50;


difference() {
	union() {
		hull() {
			translate(v = [-62.5000000000, 25.0000000000, 0]) {
				cylinder(h = 12, r = 5);
			}
			translate(v = [62.5000000000, 25.0000000000, 0]) {
				cylinder(h = 12, r = 5);
			}
			translate(v = [-62.5000000000, -25.0000000000, 0]) {
				cylinder(h = 12, r = 5);
			}
			translate(v = [62.5000000000, -25.0000000000, 0]) {
				cylinder(h = 12, r = 5);
			}
		}
	}
	union() {
		translate(v = [-60.0000000000, -22.5000000000, 2]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.5000000000);
						}
						translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						cylinder(h = 250, r = 3.6000000000);
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.8000000000);
						}
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [60.0000000000, -22.5000000000, 2]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.5000000000);
						}
						translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						cylinder(h = 250, r = 3.6000000000);
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.8000000000);
						}
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-60.0000000000, 22.5000000000, 2]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.5000000000);
						}
						translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						cylinder(h = 250, r = 3.6000000000);
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.8000000000);
						}
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [60.0000000000, 22.5000000000, 2]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.5000000000);
						}
						translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						cylinder(h = 250, r = 3.6000000000);
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.8000000000);
						}
						translate(v = [0, 0, -2.0000000000]) {
							cylinder(h = 2, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, 0, 2]) {
			hull() {
				union() {
					translate(v = [-62.0000000000, 24.5000000000, 4]) {
						cylinder(h = 49, r = 4);
					}
					translate(v = [-62.0000000000, 24.5000000000, 4]) {
						sphere(r = 4);
					}
					translate(v = [-62.0000000000, 24.5000000000, 53]) {
						sphere(r = 4);
					}
				}
				union() {
					translate(v = [62.0000000000, 24.5000000000, 4]) {
						cylinder(h = 49, r = 4);
					}
					translate(v = [62.0000000000, 24.5000000000, 4]) {
						sphere(r = 4);
					}
					translate(v = [62.0000000000, 24.5000000000, 53]) {
						sphere(r = 4);
					}
				}
				union() {
					translate(v = [-62.0000000000, -24.5000000000, 4]) {
						cylinder(h = 49, r = 4);
					}
					translate(v = [-62.0000000000, -24.5000000000, 4]) {
						sphere(r = 4);
					}
					translate(v = [-62.0000000000, -24.5000000000, 53]) {
						sphere(r = 4);
					}
				}
				union() {
					translate(v = [62.0000000000, -24.5000000000, 4]) {
						cylinder(h = 49, r = 4);
					}
					translate(v = [62.0000000000, -24.5000000000, 4]) {
						sphere(r = 4);
					}
					translate(v = [62.0000000000, -24.5000000000, 53]) {
						sphere(r = 4);
					}
				}
			}
		}
	}
}