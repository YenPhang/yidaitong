(function() {
	function l() {
		this.c = "1253407868";
		this.K = "e360";
		this.P = "q";
		this.L = "";
		this.H = "2";
		this.J = "";
		this.o = "1524981966";
		this.N = "q12.cnzz.com";
		this.I = "";
		this.q = "CNZZDATA" + this.c;
		this.p = "_CNZZDbridge_" + this.c;
		this.C = "_cnzz_CV" + this.c;
		this.s = "0";
		this.v = {};
		this.a = {};
		this.ka()
	}

	function g(a, c) {
		try {
			var b = [];
			b.push("siteid=1253407868");
			b.push("name=" + d(a.name));
			b.push("msg=" + d(a.message));
			b.push("r=" + d(h.referrer));
			b.push("page=" + d(f.location.href));
			b.push("agent=" + d(f.navigator.userAgent));
			b.push("ex=" + d(c));
			b.push("rnd=" + Math.floor(2147483648 * Math.random()));
			(new Image).src = "http://jserr.cnzz.com/log.php?" + b.join("&")
		} catch(e) {}
	}
	var h = document,
		f = window,
		d = encodeURIComponent,
		k = decodeURIComponent,
		q = unescape,
		w = escape,
		m = "https:" === f.location.protocol ? "https:" : "http:",
		x = m + "//c.cnzz.com/core.php",
		r, s, t, u, v;
	l.prototype = {
		ka: function() {
			try {
				this.S(), this.G(), this.ga(), this.D(), this.l(), this.ea(), this.da(), this.ha(), this.i(), this.ca(), this.fa(), this.ia(), this.aa(), this.Z(), this.ba(), this.pa(), f[this.p] = f[this.p] || {}, this.$("_cnzz_CV")
			} catch(a) {
				g(a, "i failed")
			}
		},
		na: function() {
			try {
				var a = this;
				f._czc = {
					push: function() {
						return a.w.apply(a, arguments)
					}
				}
			} catch(c) {
				g(c, "oP failed")
			}
		},
		Z: function() {
			try {
				var a = f._czc;
				if("[object Array]" === {}.toString.call(a))
					for(var c = 0; c < a.length; c++) {
						var b = a[c];
						switch(b[0]) {
							case "_setAccount":
								f._cz_account =
									"[object String]" === {}.toString.call(b[1]) ? b[1] : String(b[1]);
								break;
							case "_setAutoPageview":
								"boolean" === typeof b[1] && (f._cz_autoPageview = b[1])
						}
					}
			} catch(e) {
				g(e, "cS failed")
			}
		},
		pa: function() {
			try {
				if("undefined" === typeof f._cz_account || f._cz_account === this.c) {
					f._cz_account = this.c;
					if("[object Array]" === {}.toString.call(f._czc))
						for(var a = f._czc, c = 0, b = a.length; c < b; c++) this.w(a[c]);
					this.na()
				}
			} catch(e) {
				g(e, "pP failed")
			}
		},
		w: function(a) {
			try {
				if("[object Array]" === {}.toString.call(a)) switch(a[0]) {
					case "_trackPageview":
						if(a[1]) {
							this.a.d =
								m + "//" + f.location.host;
							"/" !== a[1].charAt(0) && (this.a.d += "/");
							this.a.d += a[1];
							if("" === a[2]) this.a.e = "";
							else if(a[2]) {
								var c = a[2];
								"http" !== c.substr(0, 4) && (c = m + "//" + f.location.host, "/" !== a[2].charAt(0) && (c += "/"), c += a[2]);
								this.a.e = c
							}
							this.u();
							"undefined" !== typeof this.a.e && delete this.a.e;
							"undefined" !== typeof this.a.d && delete this.a.d
						}
						break;
					case "_trackEvent":
						var b = [];
						a[1] && a[2] && (b.push(d(a[1])), b.push(d(a[2])), b.push(a[3] ? d(a[3]) : ""), a[4] = parseFloat(a[4]), b.push(isNaN(a[4]) ? 0 : a[4]), b.push(a[5] ? d(a[5]) :
							""), this.k = b.join("|"), this.u(), delete this.k);
						break;
					case "_setCustomVar":
						if(3 <= a.length) {
							if(!a[1] || !a[2]) return !1;
							var b = a[1],
								e = a[2],
								n = a[3] || 0;
							a = 0;
							for(var h in this.a.b) a++;
							if(5 <= a) return !1;
							var k;
							k = 0 == n ? "p" : -1 == n || -2 == n ? n : (new Date).getTime() + 1E3 * n;
							this.a.b[b] = {};
							this.a.b[b].Q = e;
							this.a.b[b].f = k;
							this.t()
						}
						break;
					case "_deleteCustomVar":
						2 <= a.length && (b = a[1], this.a.b[b] && (delete this.a.b[b], this.t()))
				}
			} catch(l) {
				g(l, "aC failed")
			}
		},
		ba: function() {
			try {
				var a = this.r(this.C),
					c, b;
				this.a.b = {};
				if(a)
					for(var e = a.split("&"),
							a = 0; a < e.length; a++) b = k(e[a]), c = b.split("|"), this.a.b[k(c[0])] = {}, this.a.b[k(c[0])].Q = k(c[1]), this.a.b[k(c[0])].f = k(c[2])
			} catch(d) {
				g(d, "gCV failed")
			}
		},
		T: function() {
			try {
				var a = (new Date).getTime(),
					c;
				for(c in this.a.b) "p" === this.a.b[c].f ? this.a.b[c].f = 0 : "-1" !== this.a.b[c].f && a > this.a.b[c].f && delete this.a.b[c];
				this.t()
			} catch(b) {
				g(b, "cCV failed")
			}
		},
		t: function() {
			try {
				var a = [],
					c, b, e;
				for(e in this.a.b) {
					var f = [];
					f.push(e);
					f.push(this.a.b[e].Q);
					f.push(this.a.b[e].f);
					c = f.join("|");
					a.push(c)
				}
				if(0 === a.length) return !0;
				var k = new Date;
				k.setTime(k.getTime() + 157248E5);
				b = this.C + "=";
				this.b = d(a.join("&"));
				b += this.b;
				b += "; expires=" + k.toUTCString();
				h.cookie = b + "; path=/"
			} catch(l) {
				g(l, "sCV failed")
			}
		},
		aa: function() {
			try {
				if("" !== f.location.hash) return this.B = f.location.href
			} catch(a) {
				g(a, "gCP failed")
			}
		},
		i: function() {
			try {
				return this.a.qa = h.referrer || ""
			} catch(a) {
				g(a, "gR failed")
			}
		},
		ca: function() {
			try {
				return this.a.m = f.navigator.systemLanguage || f.navigator.language, this.a.m = this.a.m.toLowerCase(), this.a.m
			} catch(a) {
				g(a, "gL failed")
			}
		},
		fa: function() {
			try {
				return this.a.O = f.screen.width && f.screen.height ? f.screen.width + "x" + f.screen.height : "0x0", this.a.O
			} catch(a) {
				g(a, "gS failed")
			}
		},
		l: function() {
			try {
				return this.a.ma = this.g("ntime") || "none"
			} catch(a) {
				g(a, "gLVST failed")
			}
		},
		F: function() {
			try {
				return this.a.R = this.g("ltime") || (new Date).getTime()
			} catch(a) {
				g(a, "gFVBT failed")
			}
		},
		ea: function() {
			try {
				var a = this.g("cnzz_a");
				if(null === a) a = 0;
				else {
					var c = 1E3 * this.l(),
						b = new Date;
					b.setTime(c);
					(new Date).getDate() === b.getDate() ? a++ : a = 0
				}
				return this.a.ua = a
			} catch(e) {
				g(e,
					"gRT failed")
			}
		},
		da: function() {
			try {
				return this.a.n = this.g("rtime"), null === this.a.n && (this.a.n = 0), 0 < this.F() && 432E5 < (new Date).getTime() - this.F() && (this.a.n++, this.a.R = (new Date).getTime()), this.a.n
			} catch(a) {
				g(a, "gRVT failed")
			}
		},
		ha: function() {
			try {
				return "none" === this.l() ? this.a.ta = 0 : this.a.ta = parseInt(((new Date).getTime() - 1E3 * this.l()) / 1E3)
			} catch(a) {
				g(a, "gST failed")
			}
		},
		ga: function() {
			try {
				var a = this.g("sin") || "none";
				if(!h.domain) return this.a.sa = "none";
				this.i().split("/")[2] !== h.domain && (a = this.i());
				return this.a.sa = a
			} catch(c) {
				g(c, "gS failed")
			}
		},
		D: function() {
			try {
				return this.a.h = this.g("cnzz_eid") || "none"
			} catch(a) {
				g(a, "gC failed")
			}
		},
		ra: function() {
			try {
				var a = x + "?",
					c = [];
				c.push("web_id=" + d(this.c));
				this.L && c.push("show=" + d(this.L));
				this.J && c.push("online=" + d(this.J));
				this.H && c.push("l=" + d(this.H));
				this.P && c.push("t=" + this.P);
				a += c.join("&");
				this.W(a, "utf-8")
			} catch(b) {
				g(b, "rN failed")
			}
		},
		S: function() {
			try {
				return !1 === f.navigator.cookieEnabled ? this.a.V = !1 : this.a.V = !0
			} catch(a) {
				g(a, "cCE failed")
			}
		},
		r: function(a) {
			try {
				a +=
					"=";
				var c = h.cookie.indexOf(a),
					b = "";
				if(-1 < c) {
					var e = h.cookie.indexOf(";", c); - 1 === e && (e = h.cookie.length);
					b = k(h.cookie.substring(c + a.length, e))
				}
				return b ? b : ""
			} catch(d) {
				g(d, "gAC failed")
			}
		},
		$: function(a) {
			try {
				h.cookie = a + "=; expires=" + (new Date(0)).toUTCString() + "; path=/"
			} catch(c) {
				g(c, "dAC failed")
			}
		},
		ia: function() {
			try {
				for(var a = h.title, c = a.length, b = 0, e = "", d = 0; d < c; d++) {
					var f = a[d];
					this.la(f) ? b++ : b += 2;
					e += f;
					if(20 <= b) {
						e += "...";
						break
					}
				}
				this.a.oa = e
			} catch(k) {
				g(k, "gT failed")
			}
		},
		A: function(a) {
			try {
				return "http" !== a.substr(0,
					4) ? "" : (new RegExp(m + "//.*?/", "i")).exec(a)
			} catch(c) {
				g(c, "cH failed")
			}
		},
		G: function() {
			try {
				var a = this.q,
					c = {},
					b = this.r(this.q);
				if(0 < b.length)
					if(1E8 < this.c) {
						var e = b.split("|");
						c.cnzz_eid = k(e[0]);
						c.ntime = k(e[1])
					} else
						for(var e = b.split("&"), d = 0, f = e.length; d < f; d++) {
							var h = e[d].split("=");
							c[k(h[0])] = k(h[1])
						}
				this.v = c
			} catch(l) {
				g(l, "iC failed:" + a + ":" + b)
			}
		},
		M: function() {
			try {
				var a = this.q + "=",
					c = [],
					b = new Date;
				b.setTime(b.getTime() + 157248E5);
				if(1E8 < this.c) {
					if("none" !== this.a.h) c.push(d(this.a.h));
					else {
						var e = Math.floor(2147483648 *
							Math.random()) + "-" + this.o + "-" + this.A(this.i());
						c.push(d(e))
					}
					c.push(this.o);
					0 < c.length ? (a += d(c.join("|")), a += "; expires=" + b.toUTCString(), a += "; path=/") : a += "; expires=" + (new Date(0)).toUTCString()
				} else "none" !== this.a.h ? c.push("cnzz_eid=" + d(this.a.h)) : (e = Math.floor(2147483648 * Math.random()) + "-" + this.o + "-" + this.A(this.i()), c.push("cnzz_eid=" + d(e))), c.push("ntime=" + this.o), 0 < c.length ? (a += d(c.join("&")), a += "; expires=" + b.toUTCString(), a += "; path=/") : a += "; expires=" + (new Date(0)).toUTCString();
				h.cookie =
					a
			} catch(f) {
				g(f, "sS failed")
			}
		},
		g: function(a) {
			try {
				return "undefined" !== typeof this.v[a] ? this.v[a] : null
			} catch(c) {
				g(c, "gCPa failed")
			}
		},
		W: function(a, c) {
			try {
				if(c = c || "utf-8", "1" === this.s) {
					var b = h.createElement("script");
					b.type = "text/javascript";
					b.async = !0;
					b.charset = c;
					b.src = a;
					var e = h.getElementsByTagName("script")[0];
					e.parentNode && e.parentNode.insertBefore(b, e)
				} else h.write(q("%3Cscript src='" + a + "' charset='" + c + "' type='text/javascript'%3E%3C/script%3E"))
			} catch(d) {
				g(d, "cAS failed")
			}
		},
		Y: function(a, c) {
			try {
				var b =
					h.getElementById("cnzz_stat_icon_" + this.c);
				if(b) {
					var e = h.createElement("script");
					e.type = "text/javascript";
					e.async = !0;
					e.charset = c;
					e.src = a;
					b.appendChild(e)
				} else "0" === this.s && h.write(q("%3Cscript src='" + a + "' charset='" + c + "' type='text/javascript'%3E%3C/script%3E"))
			} catch(d) {
				g(d, "cSI failed")
			}
		},
		X: function(a) {
			try {
				for(var c = a.length, b = "", e = 0; e < c; e++) a[e] && (b += q(a[e]));
				var d = h.getElementById("cnzz_stat_icon_" + this.c);
				d ? d.innerHTML = b : "0" === this.s && h.write(b)
			} catch(f) {
				g(f, "cI failed")
			}
		},
		u: function() {
			try {
				this.M();
				this.G();
				this.D();
				this.T();
				var a = [];
				a.push("id=" + d(this.c));
				this.a.e || "" === this.a.e ? a.push("r=" + d(this.a.e)) : a.push("r=" + d(this.a.qa));
				a.push("lg=" + d(this.a.m));
				a.push("ntime=" + d(this.a.ma));
				a.push("cnzz_eid=" + d(this.a.h));
				a.push("showp=" + d(this.a.O));
				this.a.d ? a.push("p=" + d(this.a.d)) : "[object String]" === {}.toString.call(this.B) && a.push("p=" + d(this.B));
				"[object String]" === {}.toString.call(this.k) && a.push("ei=" + d(this.k));
				"[object String]" === {}.toString.call(this.b) && a.push("cv=" + this.b);
				a.push("t=" +
					d(this.a.oa));
				a.push("h=1");
				var a = this.ja(a),
					c = a.join("&");
				"[object String]" === {}.toString.call(this.k) ? this.j([m + "//ei.cnzz.com/stat.htm?" + c]) : (this.I && this.j([m + "//" + this.I + "/stat.htm?" + c]), this.N && this.j([m + "//" + this.N + "/stat.htm?" + c]))
			} catch(b) {
				g(b, "sD failed")
			}
		},
		la: function(a) {
			return 0 > w(a).indexOf("%u") ? !1 : !0
		},
		j: function(a) {
			try {
				for(var c = a.length, b = null, d = 0; d < c; d++) a[d] && (b = "cnzz_image_" + Math.floor(2147483648 * Math.random()), f[b] = new Image, f[b].U = b, f[b].onload = f[b].onerror = f[b].onabort = function() {
					try {
						this.onload =
							this.onerror = this.onabort = null, f[this.U] = null
					} catch(a) {}
				}, f[b].src = a[d] + "&rnd=" + Math.floor(2147483648 * Math.random()))
			} catch(h) {
				g(h, "cR failed")
			}
		},
		ja: function(a) {
			r = "undefined" == typeof _e360_uid ? null : _e360_uid;
			s = "undefined" == typeof _e360_campaignid ? null : _e360_campaignid;
			t = "undefined" == typeof _e360_groupid ? null : _e360_groupid;
			u = "undefined" == typeof _e360_creativeid ? null : _e360_creativeid;
			v = "undefined" == typeof _e360_keywordid ? null : _e360_keywordid;
			r && a.push("e3uid=" + d(r));
			s && a.push("e3cid=" + d(s));
			t && a.push("e3gid=" +
				d(t));
			u && a.push("e3crid=" + d(u));
			v && a.push("e3kid=" + d(v));
			this.K && a.push("e3pid=" + d(this.K));
			return a
		}
	};
	try {
		var p = new l;
		f[p.p].bobject = p;
		!1 !== f._cz_autoPageview ? p.u() : p.M();
		l.prototype.getACookie = l.prototype.r;
		l.prototype.callRequest = l.prototype.j;
		l.prototype.createScriptIcon = l.prototype.Y;
		l.prototype.createIcon = l.prototype.X;
		p.ra()
	} catch(y) {
		g(y, "main failed")
	}
})();