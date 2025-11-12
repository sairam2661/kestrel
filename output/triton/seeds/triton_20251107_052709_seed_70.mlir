"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_kernel"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "scf.for"(%0, %1, %0) ({
    ^bb0(%arg2: tensor<32xi32>):
      %3 = "arith.select"(%arg2, %arg0, %arg1) <{predicate = 5 : i64}> : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %4 = "arith.addi"(%3, %arg2) <{overflowFlags = #arith_overflow_mode}  > : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"() : () -> ()
    }) : (tensor<32xi32>, i32, tensor<32xi32>) -> ()
    %5 = "tt.reduce"(%4) ({ 
    ^bb0(%arg3: tensor<32xi32>, %arg4: tensor<32xi32>):
      %6 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_mode}  > : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%6) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%5) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()


"ttg.num-ctas"  											( 	) 	( 	{
  "ttg.num-warps" 	( 	) 	( 	{
    "ttg.num-threads" 	( 	) 	( 	{
      "ttg.num-blocks" 	( 	) 	( 	{
        "ttg.num-smem" 	( 	) 	( 	{
          "ttg.num-regions" 	( 	) 	( 	{
            "ttg.num-ops" 	( 	) 	( 	{
              "ttg.num-args" 	( 	) 	( 	{
                "ttg.num-rets" 	( 	) 	( 	{
                  "ttg.num-branches" 	( 	) 	( 	{
                    "ttg.num-loops" 	( 	) 	( 	{
                      "ttg.num-reductions" 	( 	) 	( 	{
                        "ttg.num-calls" 	( 	) 	( 	{
                          "ttg.num-globals" 	( 	) 	( 	{
                            "ttg.num-allocs" 	( 	) 	( 	{
                              "ttg.num-frees" 	( 	) 	( 	{
                                "ttg.num-scratch-allocs" 	( 	) 	( 	{
                                  "ttg.num-scratch-frees" 	( 	) 	( 	{
                                    "ttg.num-external-refs" 	( 	) 	( 	{
                                      "ttg.num-external-fns" 	( 	) 	( 	{
                                        "ttg.num-external-libs" 	( 	) 	( 	{
                                          "ttg.num-external-modules" 	( 	) 	( 	{
                                            "ttg.num-external-operations" 	( 	) 	( 	{
                                              "ttg.num-external-attributes" 	( 	) 	( 	{
                                                "ttg.num-external-types" 	( 	) 	( 	{
                                                  "ttg.num-external-values" 	( 	) 	( 	{
                                                    "ttg.num-external-blocks" 	( 	) 	( 	{
                                                      "ttg.num-external-regions" 	( 	) 	( 	{
                                                        "ttg.num-external-functions" 	( 	) 	( 	{
                                                          "ttg.num-external-modules" 	( 	) 	( 	{
                                                            "ttg.num-external-symbols" 	( 	) 	( 	{
                                                              "ttg.num-external-constants" 	( 	) 	( 	{
                                                                "ttg.num-external-operations" 	( 	) 	( 	{
                                                                  "ttg.num-external-attributes" 	( 	) 	( 	{
                                                                    "ttg.num-external-types" 	( 	) 	( 	{
                                                                      "ttg.num-external-values" 	( 	) 	( 	{
                                                                        "ttg.num-external-blocks" 	( 	) 	( 	{
                                                                          "ttg.num-external-regions" 	( 	) 	( 	{
                                                                            "ttg.num-external-functions" 	( 	) 	( 	{
                                                                              "ttg.num-external-modules" 	( 	) 	( 	{
                                                                                "ttg.num-external-symbols" 	( 	) 	( 	{
                                                                                  "ttg.num-external-constants" 	( 	) 	( 	{
                                                                                    "ttg.num-external-operations" 	( 	) 	( 	{
                                                                                      "ttg.num-external-attributes" 	( 	) 	( 	{
                                                                                        "ttg.num-external-types" 	( 	) 	( 	{
                                                                                          "ttg.num-external-values" 	( 	) 	( 	{
                                                                                            "ttg.num-external-blocks" 	( 	) 	( 	{
                                                                                              "ttg.num-external-regions" 	( 	) 	( 	{
                                                                                                "ttg.num-external-functions" 	( 	) 	( 	{
                                                                                                  "ttg.num-external-modules" 	( 	) 	( 	{
                                                                                                    "ttg.num-external-symbols" 	( 	) 	( 	{
                                                                                                      "ttg.num-external-constants" 	( 	) 	( 	{
                                                                                                        "ttg.num-external-operations" 	( 	) 	( 	{
                                                                                                          "ttg.num-external-attributes" 	( 	) 	( 	{
                                                                                                            "ttg.num-external-types" 	( 	) 	( 	{
                                                                                                              "ttg.num-external-values" 	( 	) 	( 	{
                                                                                                                "ttg.num-external-blocks" 	( 	) 	( 	{
                                                                                                                  "ttg.num-external-regions" 	( 	) 	( 	{
                                                                                                                    "ttg.num-external-functions" 	( 	) 	( 	{
                                                                                                                      "ttg.num-external-modules" 	( 	) 	( 	{
                                                                                                                        "ttg.num-external-symbols" 	( 	) 	( 	{
                                                                                                                          "ttg.num-external-constants" 	( 	) 	( 	{
                                                                                                                            "ttg.num-external-operations" 	( 	) 	( 	{
                                                                                                                              "ttg.num-external-attributes" 	( 	) 	( 	{
                                                                                                                                "ttg.num-external-types" 	( 	) 	( 	{
                                                                                                                                  "ttg.num-external-values" 	( 	) 	( 	{
                                                                                                                                    "ttg.num-external-blocks" 	( 	) 	( 	{
                                                                                                                                      "ttg.num-external-regions" 	( 	) 	( 	{
                                                                                                                                        "ttg.num-external-functions" 	( 	) 	( 	{
                                                                                                                                          "ttg.num-external-modules" 	( 	) 	( 	{
                                                                                                                                            "ttg.num-external-symbols" 	( 	) 	( 	{
                                                                                                                                              "ttg.num