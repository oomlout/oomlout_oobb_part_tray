$fn = 50;


difference() {
	difference() {
		union() {
			hull() {
				translate(v = [-62.5000000000, 62.5000000000, 0]) {
					cylinder(h = 60, r = 5);
				}
				translate(v = [62.5000000000, 62.5000000000, 0]) {
					cylinder(h = 60, r = 5);
				}
				translate(v = [-62.5000000000, -62.5000000000, 0]) {
					cylinder(h = 60, r = 5);
				}
				translate(v = [62.5000000000, -62.5000000000, 0]) {
					cylinder(h = 60, r = 5);
				}
			}
		}
		union() {
			translate(v = [-60.0000000000, -60.0000000000, 3]) {
				rotate(a = [0, 0, 0]) {
					difference() {
						union() {
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.5000000000);
							}
							translate(v = [0, 0, -1.9000000000]) {
								cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
							}
							cylinder(h = 250, r = 3.6000000000);
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.8000000000);
							}
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.5000000000);
							}
						}
						union();
					}
				}
			}
			translate(v = [60.0000000000, -60.0000000000, 3]) {
				rotate(a = [0, 0, 0]) {
					difference() {
						union() {
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.5000000000);
							}
							translate(v = [0, 0, -1.9000000000]) {
								cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
							}
							cylinder(h = 250, r = 3.6000000000);
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.8000000000);
							}
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.5000000000);
							}
						}
						union();
					}
				}
			}
			translate(v = [-60.0000000000, 60.0000000000, 3]) {
				rotate(a = [0, 0, 0]) {
					difference() {
						union() {
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.5000000000);
							}
							translate(v = [0, 0, -1.9000000000]) {
								cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
							}
							cylinder(h = 250, r = 3.6000000000);
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.8000000000);
							}
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.5000000000);
							}
						}
						union();
					}
				}
			}
			translate(v = [60.0000000000, 60.0000000000, 3]) {
				rotate(a = [0, 0, 0]) {
					difference() {
						union() {
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.5000000000);
							}
							translate(v = [0, 0, -1.9000000000]) {
								cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
							}
							cylinder(h = 250, r = 3.6000000000);
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.8000000000);
							}
							translate(v = [0, 0, -3.0000000000]) {
								cylinder(h = 3, r = 1.5000000000);
							}
						}
						union();
					}
				}
			}
			translate(v = [0, 0, 2.9925000000]) {
				hull() {
					union() {
						translate(v = [-62.0000000000, 62.0000000000, 4]) {
							cylinder(h = 97, r = 4);
						}
						translate(v = [-62.0000000000, 62.0000000000, 4]) {
							sphere(r = 4);
						}
						translate(v = [-62.0000000000, 62.0000000000, 101]) {
							sphere(r = 4);
						}
					}
					union() {
						translate(v = [62.0000000000, 62.0000000000, 4]) {
							cylinder(h = 97, r = 4);
						}
						translate(v = [62.0000000000, 62.0000000000, 4]) {
							sphere(r = 4);
						}
						translate(v = [62.0000000000, 62.0000000000, 101]) {
							sphere(r = 4);
						}
					}
					union() {
						translate(v = [-62.0000000000, -62.0000000000, 4]) {
							cylinder(h = 97, r = 4);
						}
						translate(v = [-62.0000000000, -62.0000000000, 4]) {
							sphere(r = 4);
						}
						translate(v = [-62.0000000000, -62.0000000000, 101]) {
							sphere(r = 4);
						}
					}
					union() {
						translate(v = [62.0000000000, -62.0000000000, 4]) {
							cylinder(h = 97, r = 4);
						}
						translate(v = [62.0000000000, -62.0000000000, 4]) {
							sphere(r = 4);
						}
						translate(v = [62.0000000000, -62.0000000000, 101]) {
							sphere(r = 4);
						}
					}
				}
			}
		}
	}
	union() {
		translate(v = [0, 0, 2.9925000000]) {
			hull() {
				union() {
					translate(v = [-64.0000000000, 64.0000000000, 2]) {
						cylinder(h = 41, r = 2);
					}
					translate(v = [-64.0000000000, 64.0000000000, 2]) {
						sphere(r = 2);
					}
					translate(v = [-64.0000000000, 64.0000000000, 43]) {
						sphere(r = 2);
					}
				}
				union() {
					translate(v = [64.0000000000, 64.0000000000, 2]) {
						cylinder(h = 41, r = 2);
					}
					translate(v = [64.0000000000, 64.0000000000, 2]) {
						sphere(r = 2);
					}
					translate(v = [64.0000000000, 64.0000000000, 43]) {
						sphere(r = 2);
					}
				}
				union() {
					translate(v = [-64.0000000000, -64.0000000000, 2]) {
						cylinder(h = 41, r = 2);
					}
					translate(v = [-64.0000000000, -64.0000000000, 2]) {
						sphere(r = 2);
					}
					translate(v = [-64.0000000000, -64.0000000000, 43]) {
						sphere(r = 2);
					}
				}
				union() {
					translate(v = [64.0000000000, -64.0000000000, 2]) {
						cylinder(h = 41, r = 2);
					}
					translate(v = [64.0000000000, -64.0000000000, 2]) {
						sphere(r = 2);
					}
					translate(v = [64.0000000000, -64.0000000000, 43]) {
						sphere(r = 2);
					}
				}
			}
		}
	}
}