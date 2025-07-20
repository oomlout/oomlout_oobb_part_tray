$fn = 50;


difference() {
	union() {
		hull() {
			translate(v = [-107.5000000000, 40.0000000000, 0]) {
				cylinder(h = 15, r = 5);
			}
			translate(v = [107.5000000000, 40.0000000000, 0]) {
				cylinder(h = 15, r = 5);
			}
			translate(v = [-107.5000000000, -40.0000000000, 0]) {
				cylinder(h = 15, r = 5);
			}
			translate(v = [107.5000000000, -40.0000000000, 0]) {
				cylinder(h = 15, r = 5);
			}
		}
	}
	union() {
		translate(v = [-105.0000000000, -37.5000000000, 2]) {
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
		translate(v = [105.0000000000, -37.5000000000, 2]) {
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
		translate(v = [-105.0000000000, 37.5000000000, 2]) {
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
		translate(v = [105.0000000000, 37.5000000000, 2]) {
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
					translate(v = [-107.0000000000, 39.5000000000, 4]) {
						cylinder(h = 52, r = 4);
					}
					translate(v = [-107.0000000000, 39.5000000000, 4]) {
						sphere(r = 4);
					}
					translate(v = [-107.0000000000, 39.5000000000, 56]) {
						sphere(r = 4);
					}
				}
				union() {
					translate(v = [107.0000000000, 39.5000000000, 4]) {
						cylinder(h = 52, r = 4);
					}
					translate(v = [107.0000000000, 39.5000000000, 4]) {
						sphere(r = 4);
					}
					translate(v = [107.0000000000, 39.5000000000, 56]) {
						sphere(r = 4);
					}
				}
				union() {
					translate(v = [-107.0000000000, -39.5000000000, 4]) {
						cylinder(h = 52, r = 4);
					}
					translate(v = [-107.0000000000, -39.5000000000, 4]) {
						sphere(r = 4);
					}
					translate(v = [-107.0000000000, -39.5000000000, 56]) {
						sphere(r = 4);
					}
				}
				union() {
					translate(v = [107.0000000000, -39.5000000000, 4]) {
						cylinder(h = 52, r = 4);
					}
					translate(v = [107.0000000000, -39.5000000000, 4]) {
						sphere(r = 4);
					}
					translate(v = [107.0000000000, -39.5000000000, 56]) {
						sphere(r = 4);
					}
				}
			}
		}
	}
}