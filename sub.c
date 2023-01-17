#include <err.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
int main(int argc, char **argv) {
  if (access(".git", F_OK) == -1)
    errx(1, "Must in git directory.");

  if (argc == 1) {
    system("git status && git add . && git commit -m \"Auto-Submission\" && "
           "git push");
    return 0;
  } else {
    char str[100];

    strcpy(str, "git status && git add . && git commit -m \"");
    if (argc == 2) {
      if (argv[1][0] == '-')
        errx(1, "usage: sub [-t || --tags tag] [message for commit]");
      strcat(str, argv[1]);
      strcat(str, "\" && git push");
      system(str);
      return 0;
    }
    if (argc == 3) {
      char tag[100] = {0};
      strcat(str, "Auto-Submission\"");
      strcpy(tag, "git tag ");
      strcat(tag, argv[2]);
      system(str);
      system(tag);
      system("git push --follow-tags");
      return 0;

    } else {
      if (strcmp(argv[1], "-t") || strcmp(argv[1], "--tags")) {
        char tag[100] = {0};
        strcat(str, argv[3]);
        strcpy(tag, "git tag ");
        strcat(str, "\"");
        strcat(tag, argv[2]);
        system(str);
        system(tag);
        system("git push --follow-tags");
        return 0;
      } else {
        errx(1, "usage: sub [-t || --tags tag] [message for commit]");
      }
    }
  }

  return 0;
}
