module {
  func.func @cond_prop(%arg0: i1) -> index {
    %0 = scf.if %arg0 -> (index) {
      %1 = scf.if %arg0 -> (index) {
        %2 = "test.get_some_value1"() : () -> index
        scf.yield %2 : index
      } else {
        %2 = "test.get_some_value2"() : () -> index
        scf.yield %2 : index
      }
      scf.yield %1 : index
    } else {
      %1 = scf.if %arg0 -> (index) {
        %2 = "test.get_some_value3"() : () -> index
        scf.yield %2 : index
      } else {
        %2 = "test.get_some_value4"() : () -> index
        scf.yield %2 : index
      }
      scf.yield %1 : index
    }
    return %0 : index
  }
}

