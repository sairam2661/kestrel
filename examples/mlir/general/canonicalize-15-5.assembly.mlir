module {
  func.func private @side_effect()
  func.func @nested_unused(%arg0: i1, %arg1: i1) -> index {
    %0:2 = scf.if %arg0 -> (index, index) {
      %1:2 = scf.if %arg1 -> (index, index) {
        func.call @side_effect() : () -> ()
        %2 = "test.value0"() : () -> index
        %3 = "test.value1"() : () -> index
        scf.yield %2, %3 : index, index
      } else {
        %2 = "test.value2"() : () -> index
        %3 = "test.value3"() : () -> index
        scf.yield %2, %3 : index, index
      }
      scf.yield %1#0, %1#1 : index, index
    } else {
      %1 = "test.value0_2"() : () -> index
      %2 = "test.value1_2"() : () -> index
      scf.yield %1, %2 : index, index
    }
    return %0#1 : index
  }
}

