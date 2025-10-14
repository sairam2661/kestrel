module {
  func.func private @func_declaration(i32, i32) -> i32
  func.func private @func_declaration1(i32, i32) -> i32
  func.func @user(%arg0: i32, %arg1: i32) -> (i32, i32) {
    %0 = call @func_declaration(%arg0, %arg1) : (i32, i32) -> i32
    %1 = call @func_declaration1(%arg0, %arg1) : (i32, i32) -> i32
    return %0, %1 : i32, i32
  }
}

