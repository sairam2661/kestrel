module {
  func.func @succeededDynBaseConstraint() {
    %0 = "testd.dyn_type_base"() : () -> !testd.parametric<i32>
    %1 = "testd.dyn_type_base"() : () -> !testd.parametric<i64>
    %2 = "testd.dyn_type_base"() : () -> !testd.parametric<!testd.parametric<i64>>
    "testd.dyn_attr_base"() {attr1 = #testd.parametric_attr<i32>} : () -> ()
    "testd.dyn_attr_base"() {attr1 = #testd.parametric_attr<i64>} : () -> ()
    return
  }
}

