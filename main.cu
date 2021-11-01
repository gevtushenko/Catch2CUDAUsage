#define CATCH_CONFIG_RUNNER
#include <catch2/catch.hpp>

#include <cuda_runtime.h>

#include <iostream>


int main(int argc, char *argv[])
{
  Catch::Session session;

  int device_id {};

  // Build a new parser on top of Catch's
  using namespace Catch::clara;
  auto cli = session.cli()
             | Opt(device_id, "device")["-d"]["--device"]("device id to use");
  session.cli(cli);

  int returnCode = session.applyCommandLine(argc, argv);
  if(returnCode != 0)
  {
    return returnCode;
  }

  return session.run(argc, argv);
}
