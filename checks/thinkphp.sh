#!/bin/sh
# The default page is ThinkPHP V5's, and the captcha route exists (a GET is answered, no injection).
set -e
curl -fsS http://web/ | grep -q 'ThinkPHP'
curl -fsS http://web/ | grep -q 'V5'
code=$(curl -sS -o /dev/null -w '%{http_code}' 'http://web/index.php?s=captcha')
test "$code" != 404
