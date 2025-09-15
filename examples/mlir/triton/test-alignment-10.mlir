"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "cmp_all_contiguous"}> ({
    %30 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %31 = "arith.constant"() <{value = dense<0> : tensor<128xi32>}> : () -> tensor<128xi32>
    %32 = "arith.cmpi"(%30, %31) <{predicate = 0 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %33 = "arith.cmpi"(%30, %31) <{predicate = 1 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %34 = "arith.cmpi"(%30, %31) <{predicate = 2 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %35 = "arith.cmpi"(%30, %31) <{predicate = 3 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %36 = "arith.cmpi"(%30, %31) <{predicate = 5 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %37 = "arith.cmpi"(%30, %31) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %38 = "arith.cmpi"(%31, %30) <{predicate = 0 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %39 = "arith.cmpi"(%31, %30) <{predicate = 1 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %40 = "arith.cmpi"(%31, %30) <{predicate = 2 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %41 = "arith.cmpi"(%31, %30) <{predicate = 3 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %42 = "arith.cmpi"(%31, %30) <{predicate = 5 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %43 = "arith.cmpi"(%31, %30) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %44 = "arith.constant"() <{value = dense<8> : tensor<128xi32>}> : () -> tensor<128xi32>
    %45 = "arith.cmpi"(%44, %30) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %46 = "arith.cmpi"(%44, %31) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = () -> (), sym_name = "cmp_partial_contiguous"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<8> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<32> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.remsi"(%0, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.cmpi"(%3, %1) <{predicate = 0 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %5 = "arith.cmpi"(%3, %1) <{predicate = 1 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %6 = "arith.cmpi"(%3, %1) <{predicate = 2 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %7 = "arith.cmpi"(%3, %1) <{predicate = 3 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %8 = "arith.cmpi"(%3, %1) <{predicate = 5 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %9 = "arith.cmpi"(%3, %1) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %10 = "arith.cmpi"(%1, %3) <{predicate = 0 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %11 = "arith.cmpi"(%1, %3) <{predicate = 1 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %12 = "arith.cmpi"(%1, %3) <{predicate = 2 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %13 = "arith.cmpi"(%1, %3) <{predicate = 3 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %14 = "arith.cmpi"(%1, %3) <{predicate = 5 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %15 = "arith.cmpi"(%1, %3) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %16 = "arith.constant"() <{value = dense<48> : tensor<128xi32>}> : () -> tensor<128xi32>
    %17 = "arith.remsi"(%0, %16) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %18 = "arith.cmpi"(%17, %2) <{predicate = 0 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %19 = "arith.cmpi"(%17, %2) <{predicate = 1 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %20 = "arith.cmpi"(%17, %2) <{predicate = 2 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %21 = "arith.cmpi"(%17, %2) <{predicate = 3 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %22 = "arith.cmpi"(%17, %2) <{predicate = 5 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %23 = "arith.cmpi"(%17, %2) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %24 = "arith.cmpi"(%2, %17) <{predicate = 0 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %25 = "arith.cmpi"(%2, %17) <{predicate = 1 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %26 = "arith.cmpi"(%2, %17) <{predicate = 2 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %27 = "arith.cmpi"(%2, %17) <{predicate = 3 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %28 = "arith.cmpi"(%2, %17) <{predicate = 5 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %29 = "arith.cmpi"(%2, %17) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

