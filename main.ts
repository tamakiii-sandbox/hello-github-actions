import * as core from '@actions/core';
import * as github from '@actions/github';

async function main() {
  try {
    const time: string = (new Date()).toTimeString();
    core.setOutput("time", time);

    const payload: string = JSON.stringify(github.context.payload, undefined, 2);
    console.log(`This event payload: ${payload}`);
  } catch (error: unknown) {
    if (error instanceof Error) {
      core.setFailed(error.message);
    }
  }
}

main();
