module {
  func.func @elect_one_leader_sync() {
    %0 = nvvm.elect.sync -> i1
    return
  }
}

