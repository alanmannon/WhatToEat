(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["about"],{1511:function(t,s,o){"use strict";o.r(s);var n=function(){var t=this,s=t.$createElement,o=t._self._c||s;return o("div",{staticClass:"home"},[o("div",{staticClass:"containter",attrs:{align:"center"}},[o("div",[o("h1",[t._v(t._s(t.userinfo.username))]),o("h3",[t._v(t._s(t.userinfo.city_name)+", "+t._s(t.userinfo.state_code))]),o("hr")]),t._l(t.groups,(function(s){return o("div",[o("div",{staticClass:"col-xl-3 col-md-6 mb-4"},[o("div",{staticClass:"card border-left-warning shadow h-100 py-2"},[o("div",{staticClass:"card-body"},[o("div",{staticClass:"row no-gutters align-items-center"},[o("div",{staticClass:"col mr-2"},[o("div",{staticClass:"text-md font-weight-bold text-warning text-uppercase mb-1"},[o("h5",{attrs:{onMouseOver:"this.style.cursor='pointer'"}},[o("a",{on:{click:function(o){return t.showGroup(s.id)}}},[t._v(t._s(s.name))])])]),o("div",{staticClass:"h5 mb-0 font-weight-bold text-gray-800",attrs:{onMouseOver:"this.style.cursor='pointer'"},on:{click:function(o){return t.showGroup(s.id)}}},[t._v(t._s(s.name)+" Restaurants ")])])])])])])])}))],2)])},e=[],r=o("bc3a"),i=o.n(r),a={data:function(){return{message:"CURRENT USER PAGE",groups:[],userinfo:[],current_id:1}},created:function(){this.groupList(),this.userInfo()},methods:{groupList:function(){var t=this;i.a.get("/api/groups").then((function(s){console.log(s.data),t.groups=s.data}))},userInfo:function(){var t=this,s={jwt:localStorage.getItem("jwt")};i.a.get("/api/user/",s).then((function(s){console.log(s.data),t.userinfo=s.data,console.log(s.data)}))},showGroup:function(){this.current_id=arguments[0],console.log(this.current_id),this.$router.push("/group?group_id=".concat(this.current_id))}}},c=a,u=o("2877"),l=Object(u["a"])(c,n,e,!1,null,null,null);s["default"]=l.exports}}]);
//# sourceMappingURL=about.f9f250e3.js.map