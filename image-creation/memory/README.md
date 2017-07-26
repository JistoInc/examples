# Memory exerciser: uses random amount of memory for random periods of time

This example image utilizes the *stress* utility as a memory exerciser, which uses a random amount of memory (between 25% and 75% of the total available memory) for random periods of time.

The example job for this image has the *iterations* parameter set to 3. This means that this job will be deployed as 3 tasks, deployed on 3 Jisto Nodes (if at least 3 Jisto Nodes are available), or deployed consecutevely on a smaller number of Jisto Nodes (if less than 3 Jisto Nodes are available). This may be changed by changing the *iterations* parameter of the job.

## Requirements

* None
