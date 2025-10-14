module {
  func.func @atomic_compare_exchange(%arg0: !spirv.ptr<i32, Workgroup>, %arg1: i32, %arg2: i32) -> i32 {
    %0 = spirv.AtomicCompareExchange <Workgroup> <Release> <Acquire> %arg0, %arg1, %arg2 : !spirv.ptr<i32, Workgroup>
    return %0 : i32
  }
}

