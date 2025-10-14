module {
  func.func @reference_counting(%arg0: !async.token) {
    async.runtime.add_ref %arg0 {count = 2 : i64} : !async.token
    async.runtime.drop_ref %arg0 {count = 1 : i64} : !async.token
    return
  }
}

