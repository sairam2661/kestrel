module {
  func.func @failedReuseConstraintBetweenRegionAndOperand() {
    %c42_i32 = arith.constant 42 : i32
    "testd.region_and_operand"(%c42_i32) ({
    ^bb0(%arg0: i64):
      llvm.unreachable
    }) : (i32) -> ()
    return
  }
}

