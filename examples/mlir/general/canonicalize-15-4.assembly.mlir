module {
  func.func private @side_effect()
  func.func @one_unused(%arg0: i1) -> index {
    %0:2 = scf.if %arg0 -> (index, index) {
      func.call @side_effect() : () -> ()
      %1 = "test.value0"() : () -> index
      %2 = "test.value1"() : () -> index
      scf.yield %1, %2 : index, index
    } else {
      %1 = "test.value2"() : () -> index
      %2 = "test.value3"() : () -> index
      scf.yield %1, %2 : index, index
    }
    return %0#1 : index
  }
}

