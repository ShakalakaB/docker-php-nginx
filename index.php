<?php

print "<h1 style='text-align: center'>Hello</h1>";

print "<h1 style='text-align: center'>Writing log...</h1>";

$user = shell_exec('whoami');
print "<h1 style='text-align: center'>Current user: {$user}</h1>";

if (!is_dir("log")) {
    mkdir("log");
}

if (error_log("Test writing permission\n", 3, "./log/error.log")) {
    print "<h1 style='text-align: center'>Written Succeeded</h1>";
} else {
    print "<h1 style='text-align: center'>Written Failed</h1>";
}

