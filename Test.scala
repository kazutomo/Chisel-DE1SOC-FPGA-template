package foobar

import chisel3.iotesters
import chisel3.iotesters.{Driver, PeekPokeTester}


object TestMain extends App {

  chisel3.Driver.execute(args, () => new Foobar() )

  // iotesters.Driver.execute(args, () => new Foobar() )  { c => new FoobarUnitTester(c) }
}
