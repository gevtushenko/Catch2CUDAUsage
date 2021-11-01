#include <catch2/catch.hpp>
#include <tuple>

using cases = std::tuple<int, double>;

TEMPLATE_LIST_TEST_CASE("Simple test", "[tag]", cases)
{
  REQUIRE(sizeof(TestType) > 0);
}