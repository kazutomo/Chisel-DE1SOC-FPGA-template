package foobar

import chisel3._
import chisel3.util.log2Ceil

class Foobar extends Module {
  val io = IO(new Bundle{
    val sw = Input(UInt(10.W))
    val led = Output(UInt(10.W))
  })

  io.led := io.sw
}
