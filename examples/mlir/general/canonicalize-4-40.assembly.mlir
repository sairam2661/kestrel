module {
  func.func @test1(%arg0: i32) -> i1 {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.uitofp %arg0 : i32 to f64
    %1 = arith.cmpf ole, %0, %cst : f64
    return %1 : i1
  }
  func.func @test2(%arg0: i32) -> i1 {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.uitofp %arg0 : i32 to f64
    %1 = arith.cmpf olt, %0, %cst : f64
    return %1 : i1
  }
  func.func @test3(%arg0: i32) -> i1 {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.uitofp %arg0 : i32 to f64
    %1 = arith.cmpf oge, %0, %cst : f64
    return %1 : i1
  }
  func.func @test4(%arg0: i32) -> i1 {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.uitofp %arg0 : i32 to f64
    %1 = arith.cmpf ogt, %0, %cst : f64
    return %1 : i1
  }
  func.func @test5(%arg0: i32) -> i1 {
    %cst = arith.constant -4.400000e+00 : f64
    %0 = arith.uitofp %arg0 : i32 to f64
    %1 = arith.cmpf ogt, %0, %cst : f64
    return %1 : i1
  }
  func.func @test6(%arg0: i32) -> i1 {
    %cst = arith.constant -4.400000e+00 : f64
    %0 = arith.uitofp %arg0 : i32 to f64
    %1 = arith.cmpf olt, %0, %cst : f64
    return %1 : i1
  }
  func.func @test7(%arg0: i32) -> i1 {
    %cst = arith.constant 3.200000e+00 : f64
    %0 = arith.uitofp %arg0 : i32 to f64
    %1 = arith.cmpf oge, %0, %cst : f64
    return %1 : i1
  }
}

