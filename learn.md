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

Here’s the drawback: Laravel will now match routes against that cached file instead of your actual routes/\* files. You can make endless changes to your routes files, and they won’t take effect until you run route:cache again. This means you’ll have to recache every time you make a change, which introduces a lot of potential for confusion.

is there a way to cache only some routes in Laravel?

i think reading a book about technology or language does following things:

1. Lay down of a map to explore
   You know what basically is available, you know what everything is called
   creating a dictionary, table of contents if you wish in your ORIG_HEAD

2. It lets you get rid of fear to be eaten by this monstrous techonology
   As you know what to expect, you fear less and are more ready to explore
   it in deep.

3. It gives an awereness of some techonology history, its bugs, its intricacies
   very easily, in a processed way by someone already. It does shorten a gap between you and tech as well.

what if to use hasManythrough on relation that have onne throught or reverse?
what will happen? what are the ways to handle this other than creating new (pivot) table?

The less data you have in a pivot table, the better.
why?

non-tech people does not percieve programming as building from lego, so this analogy is not a good fit

is it right to create hierarchy of requests in laravel?

how session auth cookies are stored on the system?
is it getting encrypted? f.e. google chrome

does google chrome creates its own keyring only for itself?

---

can we integrate somehow laravel in old, plain php projects?
and gradually rewrite them in laravel? If yes, is it a common practice?

- laravel
  prepare for validation method in validation request. Should we use it?
  Or should we just give default values in controller?
  or maybe passedValidation?

- can we destructure in their own vars
  $person = ['name' => 'John', 'age' => 30, 'city' => 'New York'];

move pagination to controllers, splat, dynamic fields in sort.

dont' make tests comlicated (peak: defining variable)

introduce resources to article, tags, comments to the lup
how to sail artisan make resource

move authorization protection to requests

active directory account

feat(article-cover): complete article cover photo API

- Update route can now be used to delete article's cover by setting cover to
  anything but image in request

upgrade all tests them to be not flaky;

what will happen if user got deleted to his/her comments
t

1. Is it possible to run tests in parallel in vitest? Is it a common practice? What are the most common pitfalls using it?
2. What strategies and tricks can we use to make our tests run faster overall?

3. What are the advantages and downsides headless browser testing(Cypress) compared to in-memory DOM testing?
   It seems that dom in memory can be faster, maybe, nope?
   Why vitest don't use just headless browser, that will have routing built-in and other stuff. Also, there would not be problems with mantine, that we had
   What are the trade-offs using headless over dom in memory?

it is necessary to teach people to percieve diffrent teachers normally in the university!
adn not hate and disrespect them

#researchonmyown: I am curious also about how more traditional front-end testing library with getById, getByClassname perfomance compares with this approach with GetByText in testing library for example?

digesting information always try to make up a question,
that will force u to listen carefully and learn. Also, to expend possible
limits of knowledge thar you can get from that resource.

perfomance of tests, should i broke it granually, or it should be all crapped in one?
front-end and back-end

sudo pacman -S gst-plugin-pipewire
