module {
  func.func @atomic_exchange(%arg0: !spirv.ptr<i32, Workgroup>, %arg1: i32) -> i32 {
    %0 = spirv.AtomicExchange <Workgroup> <Release> %arg0, %arg1 : !spirv.ptr<i32, Workgroup>
    return %0 : i32
  }
}

