$fn = 50;


difference() {
	difference() {
		union() {
			hull() {
				translate(v = [-100.0000000000, 2.5000000000, 0]) {
					cylinder(h = 45, r = 5);
				}
				translate(v = [100.0000000000, 2.5000000000, 0]) {
					cylinder(h = 45, r = 5);
				}
				translate(v = [-100.0000000000, -2.5000000000, 0]) {
					cylinder(h = 45, r = 5);
				}
				translate(v = [100.0000000000, -2.5000000000, 0]) {
					cylinder(h = 45, r = 5);
				}
			}
		}
		union() {
			translate(v = [-97.5000000000, 0.0000000000, 3]) {
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
			translate(v = [97.5000000000, 0.0000000000, 3]) {
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
			translate(v = [-97.5000000000, 0.0000000000, 3]) {
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
			translate(v = [97.5000000000, 0.0000000000, 3]) {
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
						translate(v = [-99.5000000000, 2.0000000000, 4]) {
							cylinder(h = 82, r = 4);
						}
						translate(v = [-99.5000000000, 2.0000000000, 4]) {
							sphere(r = 4);
						}
						translate(v = [-99.5000000000, 2.0000000000, 86]) {
							sphere(r = 4);
						}
					}
					union() {
						translate(v = [99.5000000000, 2.0000000000, 4]) {
							cylinder(h = 82, r = 4);
						}
						translate(v = [99.5000000000, 2.0000000000, 4]) {
							sphere(r = 4);
						}
						translate(v = [99.5000000000, 2.0000000000, 86]) {
							sphere(r = 4);
						}
					}
					union() {
						translate(v = [-99.5000000000, -2.0000000000, 4]) {
							cylinder(h = 82, r = 4);
						}
						translate(v = [-99.5000000000, -2.0000000000, 4]) {
							sphere(r = 4);
						}
						translate(v = [-99.5000000000, -2.0000000000, 86]) {
							sphere(r = 4);
						}
					}
					union() {
						translate(v = [99.5000000000, -2.0000000000, 4]) {
							cylinder(h = 82, r = 4);
						}
						translate(v = [99.5000000000, -2.0000000000, 4]) {
							sphere(r = 4);
						}
						translate(v = [99.5000000000, -2.0000000000, 86]) {
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
					translate(v = [-101.5000000000, 4.0000000000, 2]) {
						cylinder(h = 26, r = 2);
					}
					translate(v = [-101.5000000000, 4.0000000000, 2]) {
						sphere(r = 2);
					}
					translate(v = [-101.5000000000, 4.0000000000, 28]) {
						sphere(r = 2);
					}
				}
				union() {
					translate(v = [101.5000000000, 4.0000000000, 2]) {
						cylinder(h = 26, r = 2);
					}
					translate(v = [101.5000000000, 4.0000000000, 2]) {
						sphere(r = 2);
					}
					translate(v = [101.5000000000, 4.0000000000, 28]) {
						sphere(r = 2);
					}
				}
				union() {
					translate(v = [-101.5000000000, -4.0000000000, 2]) {
						cylinder(h = 26, r = 2);
					}
					translate(v = [-101.5000000000, -4.0000000000, 2]) {
						sphere(r = 2);
					}
					translate(v = [-101.5000000000, -4.0000000000, 28]) {
						sphere(r = 2);
					}
				}
				union() {
					translate(v = [101.5000000000, -4.0000000000, 2]) {
						cylinder(h = 26, r = 2);
					}
					translate(v = [101.5000000000, -4.0000000000, 2]) {
						sphere(r = 2);
					}
					translate(v = [101.5000000000, -4.0000000000, 28]) {
						sphere(r = 2);
					}
				}
			}
		}
	}
}