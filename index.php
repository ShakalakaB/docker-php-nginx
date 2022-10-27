<?php

print "<h1 style='text-align: center'>Hello</h1>";

print "<h1 style='text-align: center'>Writing log...</h1>";
if (!is_dir("log")) {
    mkdir("log");
}
print_r("dddd");
error_log("Test writing permission\n", 3, "./log/error.log");

