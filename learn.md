linux commands

Awk
Sed
Find
Cut
Uniq
Basename
Getent
L
how to move to restricted folder in linux with sudo
File
Ln

What is the between hard and symbolic link in unix?

//homework

nl - number lines
wc - word count
diff
learn how to untar tar files, all the important options
learn unzip
an ad for .gz files,
gunzip <filename>
env
export

chsh
alias
unalias

q/a

what is the diff really between cpu and gpu?
what is DOS?
history of UNIX?
MS-DOS?

how ssh works in details
explore encryption behind ssh

use two diff keys on gitlab and github

regen key only for github

why rebasing origin is dangerous

what is the diff between git rm --cached <file>and git reser <file>

what is positional params and command operation in context of this command
git checkout -- <file_name>

show an example of git checkout <commit-hash> -- file

git checkout <commit> -- <deleted_file>

how to remove file from index so it won't be tracked by git anymore

git restore
git rm

git ls-files

git ls-files --error-unmatch

git show
git show --name-only <commit-hash>
git show <commit-hash>:<file-path>

git log -1 -p <commit-hash>

git blame

git commit --amend --no-edit
git commit --amend --no-edit --date="Wed Sep 26 10:00 1987 +0200"
git commit --amend --date="YYYY-MM-DD HH:MM:SS"

git commit --amend --date="relative date"
For example: --date="2 days ago" or --date="1 week ago"

GIT_AUTHOR_DATE="2023-06-01 12:00:00" GIT_COMMITTER_DATE="2023-06-01 12:00:00" git commit --amend
git rebase -i --ignore-date <commit>

git filter-branch

git reset --soft <hash> # it just moves HEAD pointer (creates dangling commits)
to get back checkout and branch out

git reflog

git reset -- <file>

Here are the Git operations that save the previous state of the branch in ORIG_HEAD:
Merging (git merge)
Resetting (git reset)
Rebasing (git rebase)
Cherry-picking (git cherry-pick)
Reverting (git revert)

git revert

what is git pathspec feature? :(glob)

git diff --cached
git diff --staged

git rebase --onto

git log -S
git log -G
git log --grep

git cherry
not cherry-pick

git cat-file

# 09/06

explore branch naming conventions
https://medium.com/@abhay.pixolo/naming-conventions-for-git-branches-a-cheatsheet-8549feca2534

https://codingsight.com/git-branching-naming-convention-best-practices/

https://hackernoon.com/git-branch-naming-convention-7-best-practices-to-follow-1c2l33g2

https://deepsource.io/blog/git-branch-naming-conventions/

mandatory use pl templates on my projects in ib

is there a nvim extension that adds highlight to git conflict markers

WHY you did that commit
It is important to convey WHY you did that changes in the commit you have made!

How: Set up your old laptop as a web server, file server, or media server using software like Apache, Nginx, or Plex.

<--! -->

pbcopy
pbpaste

- research
  Docker and containers are also well-positioned for emerging cloud technologies such as
  WebAssembly and AI workloads.

-

does .env files getting copied into containers? or docker consumes it and use as env internally?
it does look through their own ports and then other containers on the bridge
what is the order of lookup

docker compose exec ? what is the diff with docker exec
docker compose run?

coold you tell more about types of networks in compose

does kubernetes uses compose inside?
what is really kubernetes?

what is volume command in dockerfiles

what are cases when when we want to make incosistent db

referential integrit

is it better not to utilize default network on docker?

- research

WASM

bruno try out instead of postman

so, what flaw does basic auth have, that bearer token does not?

what this internship gave me?

english ideas expressing
chaning mind on php and techonology outdate date

why you wanna pass?

i am interested at collaborating with guys and creating something together!
that one week is not enough frankly.
i do understand more about importance of quality of the rest I have

base64 explained to learn

why we can't hash everything in db

what is jwt and what is the diff with bearer tokeni

are there any other approaches to auth, for example not giving out a token to user, somehting else?

we can do that with coins

Weekly Reviews
Look at your work log every week. If something interesting happens, document it. Did you fix a major performance issue? Write it down. Did you find a weird bug in a third-party API? Document it. This stuff comes in handy during reviews or when you're job hunting.

5.  Sell Your Solutions
    Every fix, every solution – no matter how small – needs to be "sold." Make a report. Build a dashboard. Because if you don't show off your work, someone else will take credit. Trust me on this one. That script that saves 10 minutes of deploy time? That's "deployment optimization" now. Put it in a nice graph. Management loves graphs.

When someone comes with a problem, you fix it. Period. This is how you become the go-to person. No complicated strategy here – just be useful. Even if it's not your system, not your code, not your problem - make it your problem. Yeah, it means more work now, but it pays off big later.

document a development process of all the stuff i don

what problems do my family and people around me run in daily basis;

dating app for women. hard to get to

better roadmap for full-stack with cool ref to cool resources (all for free)

learning languages with ai, ai explain exect meaning and emotions behind word

why react haven't intro already file system routing

tenstack vs react-router routing system

i leared new techonoligies, like tailwind ...

i like, how we, as programmers, should always keep up and be in constant movement, learn and apply smth new everyday

- Applying middleware in controllers - when and why?

  Often it’s clearer and more direct to attach middleware to your routes in the control‐
  ler instead of at the route definition

Second, you might want to set part of the subdomain as a parameter, as illustrated in Example 3-15. This is most often done in cases of multitenancy (think Slack or Har‐ vest, where each company gets its own subdomain, like tighten.slack.co).

why to give each company its own subdomain?
what are subdoins for anyway?

signed urls? how do they work exectly?
are they being actively used?
