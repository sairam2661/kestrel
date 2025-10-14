module {
  func.func @powf_func(%arg0: f64, %arg1: f64) -> f64 {
    %0 = math.powf %arg0, %arg1 : f64
    return %0 : f64
  }
  func.func @powf_func_zero(%arg0: f64) -> f64 {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = math.powf %arg0, %cst : f64
    return %0 : f64
  }
  func.func @powf_func_one(%arg0: f64) -> f64 {
    %cst = arith.constant 1.000000e+00 : f64
    %0 = math.powf %arg0, %cst : f64
    return %0 : f64
  }
  func.func @powf_func_negone(%arg0: f64) -> f64 {
    %cst = arith.constant -1.000000e+00 : f64
    %0 = math.powf %arg0, %cst : f64
    return %0 : f64
  }
  func.func @powf_func_half(%arg0: f64) -> f64 {
    %cst = arith.constant 5.000000e-01 : f64
    %0 = math.powf %arg0, %cst : f64
    return %0 : f64
  }
  func.func @powf_func_neghalf(%arg0: f64) -> f64 {
    %cst = arith.constant -5.000000e-01 : f64
    %0 = math.powf %arg0, %cst : f64
    return %0 : f64
  }
  func.func @powf_func_two(%arg0: f64) -> f64 {
    %cst = arith.constant 2.000000e+00 : f64
    %0 = math.powf %arg0, %cst : f64
    return %0 : f64
  }
  func.func @powf_func_negtwo(%arg0: f64) -> f64 {
    %cst = arith.constant -2.000000e+00 : f64
    %0 = math.powf %arg0, %cst : f64
    return %0 : f64
  }
  func.func @powf_func_three(%arg0: f64) -> f64 {
    %cst = arith.constant 3.000000e+00 : f64
    %0 = math.powf %arg0, %cst : f64
    return %0 : f64
  }
}

