contract;

use std::storage::store;
use std::storage::get;

abi TestContract {
  #[storage(write)]
  fn store_value(val: u64);
}

const COUNTER_KEY = 0x0000000000000000000000000000000000000000000000000000000000000000;

impl TestContract for Contract {
  #[storage(write)]
  fn store_value(val: u64) {
    store(COUNTER_KEY, val);
  }
}