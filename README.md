# mi250x_test

Simple benchmark that pushes pulls close to peak bandwidth and peak compute on MI250X 

## Build

Just type `make`

## Run

After building just run `./launch.sh`

This will launch two instances of the benchmark each one targeting one of the two GCDs on a MI250X GPU

To increase or decrease the run time, jut change the `n_experiments` variable in the `run.sh` script.