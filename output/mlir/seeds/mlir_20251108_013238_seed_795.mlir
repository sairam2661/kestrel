"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_arith_and_control"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %cmp1 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
      "scf.if"(%cmp1) ({
        ^bb1(%arg2: i1):
          %add1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
          "scf.yield"(%add1) : (i32) -> i32
      }) : (i32) -> i32
      ^bb2(%arg3: i32):
        %cmp2 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
        "scf.if"(%cmp2) ({
          ^bb3(%arg4: i1):
            %sub1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
            "scf.yield"(%sub1) : (i32) -> i32
        }) : (i32) -> i32
        ^bb4(%arg5: i32):
          %mul1 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
          "scf.yield"(%mul1) : (i32) -> i32
      }) : (i32) -> i32
      "func.return"(%arg3) : (i32) -> ()
  }) : () -> ()
  "func.call"()  ({
    ^bb0:
      %arg0: 3 = arith.constant 5 : i32
      %arg1: 5 = arith.constant 3 : i32
      %result: 7 = func.func @complex_arith_and_control(%arg0:  i32, %arg1: i32)  -> i32
      "func.return"() : () -> ()
  }) : () -> ()
  "func.func"()  ({
    ^bb0(%arg0: i32, %arg1: f32):
      %const: 11 = arith.constant 1.0 : f32
      %addf: 12 = arith.addf %arg1, %const : (f32, f32) -> f32
      "scf.for"(%arg0, %arg0, %addf, 1) ({
        ^bb1(%arg2: i32, %arg3: f32):
          %cmpf: 13 = arith.cmpf %arg3, %const, "olt" : (f32, f32) -> i1
          "scf.yield"(%arg2, %cmpf, "unit") : (i32, i1, i32) -> ()
      }) : (i32, i1, i32) -> ()
      "func.return"() : () -> ()
  }) : () -> ()
  "func.call"()  ({
    ^bb0:
      %arg0: 14 = arith.constant 42 : i32
      %arg1: 15 = arith.constant 2.0 : f32
      func.func @func_1(%arg0: i32, %arg1: f32)  -> ()
      "func.return"() : () -> ()
  }) : () -> ()
  "func.func"()  ({
    ^bb0(%arg0: i32, %arg1: i32):
      %const: 16 = arith.constant 10 : i32
      "scf.if"(%const) ({
        ^bb1(%arg2: i1):
          %add: 17 = arith.addi %arg0, %arg1 : (i32, i32) -> i32
          "scf.yield"(%add) : (i32) -> i32
      }) : (i32) -> i32
      ^bb2(%arg3: i32):
        %sub: 18 = arith.subi %arg0, %arg1 : (i32, i32) -> i32
        "scf.yield"(%sub) : (i32) -> i32
      }) : (i32) -> i32
      "func.return"(%arg3: i32)  ( {sym_visibility 	.visibility 	"nested" ,  "sym_visibility" 	: 	(none) } ) : (i32) -> ()
   "[" 	( tuple 	<tuple 	< tuple 	<  tuple 	< i32 > > > > 	->  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	< tuple 	<tuple <tuple <tuple <tuple <tuple 	<tuple 	< tuple 	<tuple 	< i32 > > > > > > > > > > > > > > ,  tuple 	<tuple 	<tuple 	<tuple 	<tuple 	<