module {
  func.func @successReuseConstraintBetweenRegionAndOperand() {
    %c42_i32 = arith.constant 42 : i32
    "testd.region_and_operand"(%c42_i32) ({
    ^bb0(%arg0: i32):
      llvm.unreachable
    }) : (i32) -> ()
    return
  }
}

