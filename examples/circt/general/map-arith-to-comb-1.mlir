"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input arg0 : vector<4xi32>>, parameters = [], sym_name = "invalidVector"}> ({
  ^bb0(%arg0: vector<4xi32>):
    %0 = "arith.extsi"(%arg0) : (vector<4xi32>) -> vector<4xi33>
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

