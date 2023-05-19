{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "a78684ee",
   "metadata": {
    "_cell_guid": "d0e76f9d-6b41-40fb-a33f-8e418ad8e4e9",
    "_execution_state": "idle",
    "_uuid": "16d8c1ab-3bb6-4414-a431-299967117a2f",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:07.976304Z",
     "iopub.status.busy": "2023-05-19T14:26:07.974507Z",
     "iopub.status.idle": "2023-05-19T14:26:09.048419Z",
     "shell.execute_reply": "2023-05-19T14:26:09.047176Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 1.097173,
     "end_time": "2023-05-19T14:26:09.050644",
     "exception": false,
     "start_time": "2023-05-19T14:26:07.953471",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.0     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.4.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.1.8\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.2     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.1     \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    },
    {
     "data": {
      "text/html": [],
      "text/latex": [],
      "text/markdown": [],
      "text/plain": [
       "character(0)"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# This R environment comes with many helpful analytics packages installed\n",
    "# It is defined by the kaggle/rstats Docker image: https://github.com/kaggle/docker-rstats\n",
    "# For example, here's a helpful package to load\n",
    "\n",
    "library(tidyverse) # metapackage of all tidyverse packages\n",
    "\n",
    "# Input data files are available in the read-only \"../input/\" directory\n",
    "# For example, running this (by clicking run or pressing Shift+Enter) will list all files under the input directory\n",
    "\n",
    "list.files(path = \"../input\")\n",
    "\n",
    "# You can write up to 20GB to the current directory (/kaggle/working/) that gets preserved as output when you create a version using \"Save & Run All\" \n",
    "# You can also write temporary files to /kaggle/temp/, but they won't be saved outside of the current session"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "7240c3ed",
   "metadata": {
    "_cell_guid": "726a274d-f8e4-4f31-acf2-a277ebe95721",
    "_uuid": "64e13804-2adc-4b85-94dc-6ec572a5be3d",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:09.111111Z",
     "iopub.status.busy": "2023-05-19T14:26:09.086256Z",
     "iopub.status.idle": "2023-05-19T14:26:09.122384Z",
     "shell.execute_reply": "2023-05-19T14:26:09.120839Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.05707,
     "end_time": "2023-05-19T14:26:09.124537",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.067467",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# put the URL link into the variable `url`\n",
    "url <- \"http://peopleanalytics-regression-book.org/data/salespeople.csv\""
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5ffe9e12",
   "metadata": {
    "papermill": {
     "duration": 0.016775,
     "end_time": "2023-05-19T14:26:09.159803",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.143028",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Basics of R Programming\n",
    "### reading CSV files "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "22d9e6f3",
   "metadata": {
    "_cell_guid": "1cd097f6-fae7-4905-bd6e-45a36b087fc2",
    "_uuid": "2530b1f2-821e-4cbf-931d-fbadb63b0465",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:09.197895Z",
     "iopub.status.busy": "2023-05-19T14:26:09.196456Z",
     "iopub.status.idle": "2023-05-19T14:26:09.650834Z",
     "shell.execute_reply": "2023-05-19T14:26:09.649081Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.476676,
     "end_time": "2023-05-19T14:26:09.653414",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.176738",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#using read.csv() function to read the url\n",
    "salespeople <- read.csv(url)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "e9ed0924",
   "metadata": {
    "_cell_guid": "446a270b-9626-4ead-a3e0-4a272573d81b",
    "_uuid": "4d128ac2-5fd5-456b-bc5a-b8b137cfc0fd",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:09.690895Z",
     "iopub.status.busy": "2023-05-19T14:26:09.689348Z",
     "iopub.status.idle": "2023-05-19T14:26:09.724081Z",
     "shell.execute_reply": "2023-05-19T14:26:09.722014Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.055955,
     "end_time": "2023-05-19T14:26:09.726492",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.670537",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>promoted</th><th scope=col>sales</th><th scope=col>customer_rate</th><th scope=col>performance</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>0</td><td>594</td><td>3.94</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>0</td><td>446</td><td>4.06</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1</td><td>674</td><td>3.83</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>0</td><td>525</td><td>3.62</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>1</td><td>657</td><td>4.40</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1</td><td>918</td><td>4.54</td><td>2</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & promoted & sales & customer\\_rate & performance\\\\\n",
       "  & <int> & <int> & <dbl> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 0 & 594 & 3.94 & 2\\\\\n",
       "\t2 & 0 & 446 & 4.06 & 3\\\\\n",
       "\t3 & 1 & 674 & 3.83 & 4\\\\\n",
       "\t4 & 0 & 525 & 3.62 & 2\\\\\n",
       "\t5 & 1 & 657 & 4.40 & 3\\\\\n",
       "\t6 & 1 & 918 & 4.54 & 2\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | promoted &lt;int&gt; | sales &lt;int&gt; | customer_rate &lt;dbl&gt; | performance &lt;int&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 | 0 | 594 | 3.94 | 2 |\n",
       "| 2 | 0 | 446 | 4.06 | 3 |\n",
       "| 3 | 1 | 674 | 3.83 | 4 |\n",
       "| 4 | 0 | 525 | 3.62 | 2 |\n",
       "| 5 | 1 | 657 | 4.40 | 3 |\n",
       "| 6 | 1 | 918 | 4.54 | 2 |\n",
       "\n"
      ],
      "text/plain": [
       "  promoted sales customer_rate performance\n",
       "1 0        594   3.94          2          \n",
       "2 0        446   4.06          3          \n",
       "3 1        674   3.83          4          \n",
       "4 0        525   3.62          2          \n",
       "5 1        657   4.40          3          \n",
       "6 1        918   4.54          2          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# display the first few row of the data using head() function\n",
    "head(salespeople)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "a8465869",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:09.764038Z",
     "iopub.status.busy": "2023-05-19T14:26:09.762425Z",
     "iopub.status.idle": "2023-05-19T14:26:09.780828Z",
     "shell.execute_reply": "2023-05-19T14:26:09.779069Z"
    },
    "papermill": {
     "duration": 0.03948,
     "end_time": "2023-05-19T14:26:09.782873",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.743393",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "594"
      ],
      "text/latex": [
       "594"
      ],
      "text/markdown": [
       "594"
      ],
      "text/plain": [
       "[1] 594"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# if we want to view a specific entry of array in data frame we can use the combination of $ and [] to specify\n",
    "salespeople$sales[1]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "5b0c4d1f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:09.820527Z",
     "iopub.status.busy": "2023-05-19T14:26:09.819271Z",
     "iopub.status.idle": "2023-05-19T14:26:09.833173Z",
     "shell.execute_reply": "2023-05-19T14:26:09.831841Z"
    },
    "papermill": {
     "duration": 0.034763,
     "end_time": "2023-05-19T14:26:09.834957",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.800194",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "918"
      ],
      "text/latex": [
       "918"
      ],
      "text/markdown": [
       "918"
      ],
      "text/plain": [
       "[1] 918"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# or even a [row, column] combination in indicate what we want to enquirey\n",
    "salespeople[6, 2] # 918"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a8ff02ad",
   "metadata": {
    "papermill": {
     "duration": 0.017206,
     "end_time": "2023-05-19T14:26:09.869287",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.852081",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### See the type of the object "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "a8c7a4e3",
   "metadata": {
    "_cell_guid": "bb9d8025-4cc3-4cc3-ba16-3f758d341b9c",
    "_uuid": "e2cc5df0-39dd-406a-a065-7867f9eab59c",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:09.907874Z",
     "iopub.status.busy": "2023-05-19T14:26:09.906166Z",
     "iopub.status.idle": "2023-05-19T14:26:09.926707Z",
     "shell.execute_reply": "2023-05-19T14:26:09.925087Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.041788,
     "end_time": "2023-05-19T14:26:09.928553",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.886765",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'list'"
      ],
      "text/latex": [
       "'list'"
      ],
      "text/markdown": [
       "'list'"
      ],
      "text/plain": [
       "[1] \"list\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>351</li><li>4</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 351\n",
       "\\item 4\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 351\n",
       "2. 4\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 351   4"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "typeof(salespeople)\n",
    "dim(salespeople)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dc8b2366",
   "metadata": {
    "papermill": {
     "duration": 0.017841,
     "end_time": "2023-05-19T14:26:09.963765",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.945924",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Using help functions \n",
    "There are several ways to use help() function, see the examples below \n",
    "- help(funcntion name)\n",
    "- ?function name\n",
    "    "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "a91bd5e3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:10.003561Z",
     "iopub.status.busy": "2023-05-19T14:26:10.002159Z",
     "iopub.status.idle": "2023-05-19T14:26:10.307470Z",
     "shell.execute_reply": "2023-05-19T14:26:10.304750Z"
    },
    "papermill": {
     "duration": 0.328612,
     "end_time": "2023-05-19T14:26:10.310087",
     "exception": false,
     "start_time": "2023-05-19T14:26:09.981475",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# using help() function to see the documentation of a function\n",
    "help(dim)\n",
    "?head()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "a184de16",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:10.349026Z",
     "iopub.status.busy": "2023-05-19T14:26:10.347611Z",
     "iopub.status.idle": "2023-05-19T14:26:10.368673Z",
     "shell.execute_reply": "2023-05-19T14:26:10.366800Z"
    },
    "papermill": {
     "duration": 0.043775,
     "end_time": "2023-05-19T14:26:10.371111",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.327336",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t351 obs. of  4 variables:\n",
      " $ promoted     : int  0 0 1 0 1 1 0 0 0 0 ...\n",
      " $ sales        : int  594 446 674 525 657 918 318 364 342 387 ...\n",
      " $ customer_rate: num  3.94 4.06 3.83 3.62 4.4 4.54 3.09 4.89 3.74 3 ...\n",
      " $ performance  : int  2 3 4 2 3 2 3 1 3 3 ...\n"
     ]
    }
   ],
   "source": [
    "# to see the datatype of a dataframe \n",
    "str(salespeople)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "d9db080e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:10.451722Z",
     "iopub.status.busy": "2023-05-19T14:26:10.450125Z",
     "iopub.status.idle": "2023-05-19T14:26:10.469953Z",
     "shell.execute_reply": "2023-05-19T14:26:10.468037Z"
    },
    "papermill": {
     "duration": 0.042674,
     "end_time": "2023-05-19T14:26:10.472406",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.429732",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "    promoted          sales       customer_rate    performance \n",
       " Min.   :0.0000   Min.   :151.0   Min.   :1.000   Min.   :1.0  \n",
       " 1st Qu.:0.0000   1st Qu.:389.2   1st Qu.:3.000   1st Qu.:2.0  \n",
       " Median :0.0000   Median :475.0   Median :3.620   Median :3.0  \n",
       " Mean   :0.3219   Mean   :527.0   Mean   :3.608   Mean   :2.5  \n",
       " 3rd Qu.:1.0000   3rd Qu.:667.2   3rd Qu.:4.290   3rd Qu.:3.0  \n",
       " Max.   :1.0000   Max.   :945.0   Max.   :5.000   Max.   :4.0  \n",
       "                  NA's   :1       NA's   :1       NA's   :1    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# statistical summary of each column in a dataframe\n",
    "summary(salespeople)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7550235f",
   "metadata": {
    "papermill": {
     "duration": 0.017354,
     "end_time": "2023-05-19T14:26:10.507511",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.490157",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Note in the above salespeople summary, the `NA` indicates the missing value in the dataframe\\n  \n",
    "Note that `NA` is different from `\"NA\"` as the later indicates a string "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "212634e5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:10.545307Z",
     "iopub.status.busy": "2023-05-19T14:26:10.543873Z",
     "iopub.status.idle": "2023-05-19T14:26:10.561841Z",
     "shell.execute_reply": "2023-05-19T14:26:10.559484Z"
    },
    "papermill": {
     "duration": 0.039767,
     "end_time": "2023-05-19T14:26:10.564604",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.524837",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3"
      ],
      "text/latex": [
       "3"
      ],
      "text/markdown": [
       "3"
      ],
      "text/plain": [
       "[1] 3"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# using is.na() function, we can find the missing value in a dataframe or a vector \n",
    "# we use sum() function to sum up the missing value \n",
    "sum(is.na(salespeople))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "8ab10e72",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:10.606205Z",
     "iopub.status.busy": "2023-05-19T14:26:10.604654Z",
     "iopub.status.idle": "2023-05-19T14:26:10.623481Z",
     "shell.execute_reply": "2023-05-19T14:26:10.621438Z"
    },
    "papermill": {
     "duration": 0.041272,
     "end_time": "2023-05-19T14:26:10.626102",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.584830",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0"
      ],
      "text/latex": [
       "0"
      ],
      "text/markdown": [
       "0"
      ],
      "text/plain": [
       "[1] 0"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# we use complete.cases() function to identify the rows with no missing data \n",
    "# we then assign the salespeople data with no missing value rows to the salespeople dataset \n",
    "salespeople <- salespeople[complete.cases(salespeople), ]\n",
    "# we then want to make sure that there is no missing value in the dataset using is.na() function\n",
    "sum(is.na(salespeople))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "ec6ef13f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:10.666106Z",
     "iopub.status.busy": "2023-05-19T14:26:10.664643Z",
     "iopub.status.idle": "2023-05-19T14:26:10.681115Z",
     "shell.execute_reply": "2023-05-19T14:26:10.679111Z"
    },
    "papermill": {
     "duration": 0.039172,
     "end_time": "2023-05-19T14:26:10.683614",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.644442",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>2</li><li>3</li><li>4</li><li>1</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 2\n",
       "\\item 3\n",
       "\\item 4\n",
       "\\item 1\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 2\n",
       "2. 3\n",
       "3. 4\n",
       "4. 1\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 2 3 4 1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# use unique() function to see the unique values in a column \n",
    "unique(salespeople$performance)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3bc52a47",
   "metadata": {
    "papermill": {
     "duration": 0.01763,
     "end_time": "2023-05-19T14:26:10.718970",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.701340",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Functions to change the data type of a column \n",
    "For example:\n",
    "`as.numeric()`, `as.character()`, `as.logical()`, `as.factor()`"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "43b6e5af",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:10.757364Z",
     "iopub.status.busy": "2023-05-19T14:26:10.756187Z",
     "iopub.status.idle": "2023-05-19T14:26:10.774248Z",
     "shell.execute_reply": "2023-05-19T14:26:10.772246Z"
    },
    "papermill": {
     "duration": 0.03966,
     "end_time": "2023-05-19T14:26:10.776465",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.736805",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t350 obs. of  4 variables:\n",
      " $ promoted     : int  0 0 1 0 1 1 0 0 0 0 ...\n",
      " $ sales        : int  594 446 674 525 657 918 318 364 342 387 ...\n",
      " $ customer_rate: num  3.94 4.06 3.83 3.62 4.4 4.54 3.09 4.89 3.74 3 ...\n",
      " $ performance  : Factor w/ 4 levels \"1\",\"2\",\"3\",\"4\": 2 3 4 2 3 2 3 1 3 3 ...\n"
     ]
    }
   ],
   "source": [
    "# we are using as.factor() to change the datatype of the column salepeople$performance to categorial data \n",
    "salespeople$performance <- as.factor(salespeople$performance)\n",
    "str(salespeople)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "14c5a2f7",
   "metadata": {
    "papermill": {
     "duration": 0.017854,
     "end_time": "2023-05-19T14:26:10.812190",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.794336",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We confirm through observation the we have changed the datatype of the row performance from `int` to `Factor` "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "bcff3547",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:10.882846Z",
     "iopub.status.busy": "2023-05-19T14:26:10.851079Z",
     "iopub.status.idle": "2023-05-19T14:26:10.903362Z",
     "shell.execute_reply": "2023-05-19T14:26:10.901543Z"
    },
    "papermill": {
     "duration": 0.07535,
     "end_time": "2023-05-19T14:26:10.905758",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.830408",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 1 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>promoted</th><th scope=col>sales</th><th scope=col>customer_rate</th><th scope=col>performance</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>290</th><td>1</td><td>720</td><td>3.76</td><td>3</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 1 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & promoted & sales & customer\\_rate & performance\\\\\n",
       "  & <int> & <int> & <dbl> & <fct>\\\\\n",
       "\\hline\n",
       "\t290 & 1 & 720 & 3.76 & 3\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 1 × 4\n",
       "\n",
       "| <!--/--> | promoted &lt;int&gt; | sales &lt;int&gt; | customer_rate &lt;dbl&gt; | performance &lt;fct&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 290 | 1 | 720 | 3.76 | 3 |\n",
       "\n"
      ],
      "text/plain": [
       "    promoted sales customer_rate performance\n",
       "290 1        720   3.76          3          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# we can use subset() function to subset a dataframe \n",
    "sales_720 <- subset(salespeople, subset = sales == 720) \n",
    "# apart from ==, we can also use >=, <=, > , <, or != for not equal to\n",
    "sales_720"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "e9415164",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:10.946802Z",
     "iopub.status.busy": "2023-05-19T14:26:10.945465Z",
     "iopub.status.idle": "2023-05-19T14:26:10.969601Z",
     "shell.execute_reply": "2023-05-19T14:26:10.967532Z"
    },
    "papermill": {
     "duration": 0.047577,
     "end_time": "2023-05-19T14:26:10.972753",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.925176",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>promoted</th><th scope=col>sales</th><th scope=col>customer_rate</th><th scope=col>performance</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>6</th><td>1</td><td>918</td><td>4.54</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>12</th><td>1</td><td>716</td><td>3.16</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>20</th><td>1</td><td>937</td><td>5.00</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>21</th><td>1</td><td>702</td><td>3.53</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>25</th><td>1</td><td>819</td><td>4.45</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>26</th><td>1</td><td>736</td><td>3.94</td><td>4</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & promoted & sales & customer\\_rate & performance\\\\\n",
       "  & <int> & <int> & <dbl> & <fct>\\\\\n",
       "\\hline\n",
       "\t6 & 1 & 918 & 4.54 & 2\\\\\n",
       "\t12 & 1 & 716 & 3.16 & 3\\\\\n",
       "\t20 & 1 & 937 & 5.00 & 2\\\\\n",
       "\t21 & 1 & 702 & 3.53 & 4\\\\\n",
       "\t25 & 1 & 819 & 4.45 & 2\\\\\n",
       "\t26 & 1 & 736 & 3.94 & 4\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | promoted &lt;int&gt; | sales &lt;int&gt; | customer_rate &lt;dbl&gt; | performance &lt;fct&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 6 | 1 | 918 | 4.54 | 2 |\n",
       "| 12 | 1 | 716 | 3.16 | 3 |\n",
       "| 20 | 1 | 937 | 5.00 | 2 |\n",
       "| 21 | 1 | 702 | 3.53 | 4 |\n",
       "| 25 | 1 | 819 | 4.45 | 2 |\n",
       "| 26 | 1 | 736 | 3.94 | 4 |\n",
       "\n"
      ],
      "text/plain": [
       "   promoted sales customer_rate performance\n",
       "6  1        918   4.54          2          \n",
       "12 1        716   3.16          3          \n",
       "20 1        937   5.00          2          \n",
       "21 1        702   3.53          4          \n",
       "25 1        819   4.45          2          \n",
       "26 1        736   3.94          4          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# we are subsetting sales people over 700 sales using the same subset() function \n",
    "high_sales = subset(salespeople, subset=sales >= 700)\n",
    "head(high_sales)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "524bc22e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.013520Z",
     "iopub.status.busy": "2023-05-19T14:26:11.012161Z",
     "iopub.status.idle": "2023-05-19T14:26:11.029093Z",
     "shell.execute_reply": "2023-05-19T14:26:11.027130Z"
    },
    "papermill": {
     "duration": 0.0403,
     "end_time": "2023-05-19T14:26:11.031640",
     "exception": false,
     "start_time": "2023-05-19T14:26:10.991340",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>918</li><li>716</li><li>937</li><li>702</li><li>819</li><li>736</li><li>717</li><li>825</li><li>728</li><li>773</li><li>943</li><li>945</li><li>840</li><li>754</li><li>803</li><li>753</li><li>756</li><li>757</li><li>909</li><li>944</li><li>735</li><li>738</li><li>902</li><li>935</li><li>800</li><li>901</li><li>802</li><li>818</li><li>862</li><li>938</li><li>898</li><li>777</li><li>780</li><li>794</li><li>857</li><li>828</li><li>752</li><li>940</li><li>739</li><li>742</li><li>882</li><li>922</li><li>793</li><li>787</li><li>886</li><li>718</li><li>841</li><li>842</li><li>720</li><li>871</li><li>835</li><li>858</li><li>707</li><li>798</li><li>930</li><li>732</li><li>789</li><li>795</li><li>796</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 918\n",
       "\\item 716\n",
       "\\item 937\n",
       "\\item 702\n",
       "\\item 819\n",
       "\\item 736\n",
       "\\item 717\n",
       "\\item 825\n",
       "\\item 728\n",
       "\\item 773\n",
       "\\item 943\n",
       "\\item 945\n",
       "\\item 840\n",
       "\\item 754\n",
       "\\item 803\n",
       "\\item 753\n",
       "\\item 756\n",
       "\\item 757\n",
       "\\item 909\n",
       "\\item 944\n",
       "\\item 735\n",
       "\\item 738\n",
       "\\item 902\n",
       "\\item 935\n",
       "\\item 800\n",
       "\\item 901\n",
       "\\item 802\n",
       "\\item 818\n",
       "\\item 862\n",
       "\\item 938\n",
       "\\item 898\n",
       "\\item 777\n",
       "\\item 780\n",
       "\\item 794\n",
       "\\item 857\n",
       "\\item 828\n",
       "\\item 752\n",
       "\\item 940\n",
       "\\item 739\n",
       "\\item 742\n",
       "\\item 882\n",
       "\\item 922\n",
       "\\item 793\n",
       "\\item 787\n",
       "\\item 886\n",
       "\\item 718\n",
       "\\item 841\n",
       "\\item 842\n",
       "\\item 720\n",
       "\\item 871\n",
       "\\item 835\n",
       "\\item 858\n",
       "\\item 707\n",
       "\\item 798\n",
       "\\item 930\n",
       "\\item 732\n",
       "\\item 789\n",
       "\\item 795\n",
       "\\item 796\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 918\n",
       "2. 716\n",
       "3. 937\n",
       "4. 702\n",
       "5. 819\n",
       "6. 736\n",
       "7. 717\n",
       "8. 825\n",
       "9. 728\n",
       "10. 773\n",
       "11. 943\n",
       "12. 945\n",
       "13. 840\n",
       "14. 754\n",
       "15. 803\n",
       "16. 753\n",
       "17. 756\n",
       "18. 757\n",
       "19. 909\n",
       "20. 944\n",
       "21. 735\n",
       "22. 738\n",
       "23. 902\n",
       "24. 935\n",
       "25. 800\n",
       "26. 901\n",
       "27. 802\n",
       "28. 818\n",
       "29. 862\n",
       "30. 938\n",
       "31. 898\n",
       "32. 777\n",
       "33. 780\n",
       "34. 794\n",
       "35. 857\n",
       "36. 828\n",
       "37. 752\n",
       "38. 940\n",
       "39. 739\n",
       "40. 742\n",
       "41. 882\n",
       "42. 922\n",
       "43. 793\n",
       "44. 787\n",
       "45. 886\n",
       "46. 718\n",
       "47. 841\n",
       "48. 842\n",
       "49. 720\n",
       "50. 871\n",
       "51. 835\n",
       "52. 858\n",
       "53. 707\n",
       "54. 798\n",
       "55. 930\n",
       "56. 732\n",
       "57. 789\n",
       "58. 795\n",
       "59. 796\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] 918 716 937 702 819 736 717 825 728 773 943 945 840 754 803 753 756 757 909\n",
       "[20] 944 735 738 902 935 800 901 802 818 862 938 898 777 780 794 857 828 752 940\n",
       "[39] 739 742 882 922 793 787 886 718 841 842 720 871 835 858 707 798 930 732 789\n",
       "[58] 795 796"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# checking if all the values for sales is above 700 \n",
    "unique(high_sales$sales)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "38b52166",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.072378Z",
     "iopub.status.busy": "2023-05-19T14:26:11.071027Z",
     "iopub.status.idle": "2023-05-19T14:26:11.087816Z",
     "shell.execute_reply": "2023-05-19T14:26:11.085945Z"
    },
    "papermill": {
     "duration": 0.039683,
     "end_time": "2023-05-19T14:26:11.090071",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.050388",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t350 obs. of  4 variables:\n",
      " $ promoted     : int  0 0 1 0 1 1 0 0 0 0 ...\n",
      " $ sales        : int  594 446 674 525 657 918 318 364 342 387 ...\n",
      " $ customer_rate: num  3.94 4.06 3.83 3.62 4.4 4.54 3.09 4.89 3.74 3 ...\n",
      " $ performance  : Factor w/ 4 levels \"1\",\"2\",\"3\",\"4\": 2 3 4 2 3 2 3 1 3 3 ...\n"
     ]
    }
   ],
   "source": [
    "str(salespeople)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "08b3845b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.130171Z",
     "iopub.status.busy": "2023-05-19T14:26:11.128649Z",
     "iopub.status.idle": "2023-05-19T14:26:11.150258Z",
     "shell.execute_reply": "2023-05-19T14:26:11.148865Z"
    },
    "papermill": {
     "duration": 0.043558,
     "end_time": "2023-05-19T14:26:11.152107",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.108549",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>sales</th><th scope=col>performance</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>594</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>446</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>674</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>525</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>657</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>918</td><td>2</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 2\n",
       "\\begin{tabular}{r|ll}\n",
       "  & sales & performance\\\\\n",
       "  & <int> & <fct>\\\\\n",
       "\\hline\n",
       "\t1 & 594 & 2\\\\\n",
       "\t2 & 446 & 3\\\\\n",
       "\t3 & 674 & 4\\\\\n",
       "\t4 & 525 & 2\\\\\n",
       "\t5 & 657 & 3\\\\\n",
       "\t6 & 918 & 2\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 2\n",
       "\n",
       "| <!--/--> | sales &lt;int&gt; | performance &lt;fct&gt; |\n",
       "|---|---|---|\n",
       "| 1 | 594 | 2 |\n",
       "| 2 | 446 | 3 |\n",
       "| 3 | 674 | 4 |\n",
       "| 4 | 525 | 2 |\n",
       "| 5 | 657 | 3 |\n",
       "| 6 | 918 | 2 |\n",
       "\n"
      ],
      "text/plain": [
       "  sales performance\n",
       "1 594   2          \n",
       "2 446   3          \n",
       "3 674   4          \n",
       "4 525   2          \n",
       "5 657   3          \n",
       "6 918   2          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# to select specific columns in a dataframe using select argument \n",
    "salespeople_sales_perf = subset(salespeople, select = c(\"sales\", \"performance\"))\n",
    "head(salespeople_sales_perf)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "3deadb3e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.194243Z",
     "iopub.status.busy": "2023-05-19T14:26:11.192455Z",
     "iopub.status.idle": "2023-05-19T14:26:11.216296Z",
     "shell.execute_reply": "2023-05-19T14:26:11.214699Z"
    },
    "papermill": {
     "duration": 0.046966,
     "end_time": "2023-05-19T14:26:11.218206",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.171240",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>promoted</th><th scope=col>sales</th><th scope=col>customer_rate</th><th scope=col>performance</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>7</th><td>0</td><td>318</td><td>3.09</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>0</td><td>364</td><td>4.89</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>0</td><td>342</td><td>3.74</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>0</td><td>387</td><td>3.00</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>15</th><td>0</td><td>344</td><td>3.02</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>16</th><td>0</td><td>372</td><td>3.87</td><td>3</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & promoted & sales & customer\\_rate & performance\\\\\n",
       "  & <int> & <int> & <dbl> & <fct>\\\\\n",
       "\\hline\n",
       "\t7 & 0 & 318 & 3.09 & 3\\\\\n",
       "\t8 & 0 & 364 & 4.89 & 1\\\\\n",
       "\t9 & 0 & 342 & 3.74 & 3\\\\\n",
       "\t10 & 0 & 387 & 3.00 & 3\\\\\n",
       "\t15 & 0 & 344 & 3.02 & 2\\\\\n",
       "\t16 & 0 & 372 & 3.87 & 3\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | promoted &lt;int&gt; | sales &lt;int&gt; | customer_rate &lt;dbl&gt; | performance &lt;fct&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 7 | 0 | 318 | 3.09 | 3 |\n",
       "| 8 | 0 | 364 | 4.89 | 1 |\n",
       "| 9 | 0 | 342 | 3.74 | 3 |\n",
       "| 10 | 0 | 387 | 3.00 | 3 |\n",
       "| 15 | 0 | 344 | 3.02 | 2 |\n",
       "| 16 | 0 | 372 | 3.87 | 3 |\n",
       "\n"
      ],
      "text/plain": [
       "   promoted sales customer_rate performance\n",
       "7  0        318   3.09          3          \n",
       "8  0        364   4.89          1          \n",
       "9  0        342   3.74          3          \n",
       "10 0        387   3.00          3          \n",
       "15 0        344   3.02          2          \n",
       "16 0        372   3.87          3          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# seperating out the sales below 400 \n",
    "low_sales <- subset(salespeople, subset = sales < 400)\n",
    "head(low_sales)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "e7b734bb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.259989Z",
     "iopub.status.busy": "2023-05-19T14:26:11.258490Z",
     "iopub.status.idle": "2023-05-19T14:26:11.282692Z",
     "shell.execute_reply": "2023-05-19T14:26:11.281257Z"
    },
    "papermill": {
     "duration": 0.046797,
     "end_time": "2023-05-19T14:26:11.284465",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.237668",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>promoted</th><th scope=col>sales</th><th scope=col>customer_rate</th><th scope=col>performance</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>7</th><td>0</td><td>318</td><td>3.09</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>0</td><td>364</td><td>4.89</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>0</td><td>342</td><td>3.74</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>0</td><td>387</td><td>3.00</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>15</th><td>0</td><td>344</td><td>3.02</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>16</th><td>0</td><td>372</td><td>3.87</td><td>3</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & promoted & sales & customer\\_rate & performance\\\\\n",
       "  & <int> & <int> & <dbl> & <fct>\\\\\n",
       "\\hline\n",
       "\t7 & 0 & 318 & 3.09 & 3\\\\\n",
       "\t8 & 0 & 364 & 4.89 & 1\\\\\n",
       "\t9 & 0 & 342 & 3.74 & 3\\\\\n",
       "\t10 & 0 & 387 & 3.00 & 3\\\\\n",
       "\t15 & 0 & 344 & 3.02 & 2\\\\\n",
       "\t16 & 0 & 372 & 3.87 & 3\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | promoted &lt;int&gt; | sales &lt;int&gt; | customer_rate &lt;dbl&gt; | performance &lt;fct&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 7 | 0 | 318 | 3.09 | 3 |\n",
       "| 8 | 0 | 364 | 4.89 | 1 |\n",
       "| 9 | 0 | 342 | 3.74 | 3 |\n",
       "| 10 | 0 | 387 | 3.00 | 3 |\n",
       "| 15 | 0 | 344 | 3.02 | 2 |\n",
       "| 16 | 0 | 372 | 3.87 | 3 |\n",
       "\n"
      ],
      "text/plain": [
       "   promoted sales customer_rate performance\n",
       "7  0        318   3.09          3          \n",
       "8  0        364   4.89          1          \n",
       "9  0        342   3.74          3          \n",
       "10 0        387   3.00          3          \n",
       "15 0        344   3.02          2          \n",
       "16 0        372   3.87          3          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# combine dataframes by rows using rbind() function \n",
    "low_and_high_sales = rbind(low_sales, high_sales) # rbind stands for row bind \n",
    "# low_and_high_sales\n",
    "head(low_and_high_sales)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "10067c31",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.333070Z",
     "iopub.status.busy": "2023-05-19T14:26:11.331382Z",
     "iopub.status.idle": "2023-05-19T14:26:11.359656Z",
     "shell.execute_reply": "2023-05-19T14:26:11.357962Z"
    },
    "papermill": {
     "duration": 0.057539,
     "end_time": "2023-05-19T14:26:11.361542",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.304003",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>sales</th><th scope=col>performance</th><th scope=col>promoted</th><th scope=col>customer_rate</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>594</td><td>2</td><td>0</td><td>3.94</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>446</td><td>3</td><td>0</td><td>4.06</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>674</td><td>4</td><td>1</td><td>3.83</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>525</td><td>2</td><td>0</td><td>3.62</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>657</td><td>3</td><td>1</td><td>4.40</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>918</td><td>2</td><td>1</td><td>4.54</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & sales & performance & promoted & customer\\_rate\\\\\n",
       "  & <int> & <fct> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 594 & 2 & 0 & 3.94\\\\\n",
       "\t2 & 446 & 3 & 0 & 4.06\\\\\n",
       "\t3 & 674 & 4 & 1 & 3.83\\\\\n",
       "\t4 & 525 & 2 & 0 & 3.62\\\\\n",
       "\t5 & 657 & 3 & 1 & 4.40\\\\\n",
       "\t6 & 918 & 2 & 1 & 4.54\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | sales &lt;int&gt; | performance &lt;fct&gt; | promoted &lt;int&gt; | customer_rate &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 | 594 | 2 | 0 | 3.94 |\n",
       "| 2 | 446 | 3 | 0 | 4.06 |\n",
       "| 3 | 674 | 4 | 1 | 3.83 |\n",
       "| 4 | 525 | 2 | 0 | 3.62 |\n",
       "| 5 | 657 | 3 | 1 | 4.40 |\n",
       "| 6 | 918 | 2 | 1 | 4.54 |\n",
       "\n"
      ],
      "text/plain": [
       "  sales performance promoted customer_rate\n",
       "1 594   2           0        3.94         \n",
       "2 446   3           0        4.06         \n",
       "3 674   4           1        3.83         \n",
       "4 525   2           0        3.62         \n",
       "5 657   3           1        4.40         \n",
       "6 918   2           1        4.54         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# combine dataframes by columns \n",
    "# seperating out sales and performance column\n",
    "sales_perf <- subset(salespeople, select = c('sales', 'performance'))\n",
    "# seperating out sales and customer_rate columns\n",
    "prom_custrate <- subset(salespeople, select = c('promoted', 'customer_rate'))\n",
    "#combining two seperated out columns by their columns \n",
    "full_df <- cbind(sales_perf, prom_custrate)\n",
    "head(full_df)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "490b361b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.403946Z",
     "iopub.status.busy": "2023-05-19T14:26:11.402484Z",
     "iopub.status.idle": "2023-05-19T14:26:11.463077Z",
     "shell.execute_reply": "2023-05-19T14:26:11.460962Z"
    },
    "papermill": {
     "duration": 0.084421,
     "end_time": "2023-05-19T14:26:11.465756",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.381335",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 10 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>promoted</th><th scope=col>sales</th><th scope=col>customer_rate</th><th scope=col>performance</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>0</td><td>594</td><td>3.94</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>0</td><td>446</td><td>4.06</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1</td><td>674</td><td>3.83</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>0</td><td>525</td><td>3.62</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>1</td><td>657</td><td>4.40</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1</td><td>918</td><td>4.54</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>0</td><td>318</td><td>3.09</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>0</td><td>364</td><td>4.89</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>0</td><td>342</td><td>3.74</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>0</td><td>387</td><td>3.00</td><td>3</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 10 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & promoted & sales & customer\\_rate & performance\\\\\n",
       "  & <int> & <int> & <dbl> & <fct>\\\\\n",
       "\\hline\n",
       "\t1 & 0 & 594 & 3.94 & 2\\\\\n",
       "\t2 & 0 & 446 & 4.06 & 3\\\\\n",
       "\t3 & 1 & 674 & 3.83 & 4\\\\\n",
       "\t4 & 0 & 525 & 3.62 & 2\\\\\n",
       "\t5 & 1 & 657 & 4.40 & 3\\\\\n",
       "\t6 & 1 & 918 & 4.54 & 2\\\\\n",
       "\t7 & 0 & 318 & 3.09 & 3\\\\\n",
       "\t8 & 0 & 364 & 4.89 & 1\\\\\n",
       "\t9 & 0 & 342 & 3.74 & 3\\\\\n",
       "\t10 & 0 & 387 & 3.00 & 3\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 10 × 4\n",
       "\n",
       "| <!--/--> | promoted &lt;int&gt; | sales &lt;int&gt; | customer_rate &lt;dbl&gt; | performance &lt;fct&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 | 0 | 594 | 3.94 | 2 |\n",
       "| 2 | 0 | 446 | 4.06 | 3 |\n",
       "| 3 | 1 | 674 | 3.83 | 4 |\n",
       "| 4 | 0 | 525 | 3.62 | 2 |\n",
       "| 5 | 1 | 657 | 4.40 | 3 |\n",
       "| 6 | 1 | 918 | 4.54 | 2 |\n",
       "| 7 | 0 | 318 | 3.09 | 3 |\n",
       "| 8 | 0 | 364 | 4.89 | 1 |\n",
       "| 9 | 0 | 342 | 3.74 | 3 |\n",
       "| 10 | 0 | 387 | 3.00 | 3 |\n",
       "\n"
      ],
      "text/plain": [
       "   promoted sales customer_rate performance\n",
       "1  0        594   3.94          2          \n",
       "2  0        446   4.06          3          \n",
       "3  1        674   3.83          4          \n",
       "4  0        525   3.62          2          \n",
       "5  1        657   4.40          3          \n",
       "6  1        918   4.54          2          \n",
       "7  0        318   3.09          3          \n",
       "8  0        364   4.89          1          \n",
       "9  0        342   3.74          3          \n",
       "10 0        387   3.00          3          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 10 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>promoted</th><th scope=col>sales</th><th scope=col>customer_rate</th><th scope=col>performance</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>0</td><td>594</td><td>3.94</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>0</td><td>446</td><td>4.06</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1</td><td>674</td><td>3.83</td><td>4</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>0</td><td>525</td><td>3.62</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>1</td><td>657</td><td>4.40</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1</td><td>918</td><td>4.54</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>0</td><td>318</td><td>3.09</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>0</td><td>364</td><td>4.89</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>0</td><td>342</td><td>3.74</td><td>3</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>0</td><td>387</td><td>3.00</td><td>3</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 10 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & promoted & sales & customer\\_rate & performance\\\\\n",
       "  & <int> & <int> & <dbl> & <fct>\\\\\n",
       "\\hline\n",
       "\t1 & 0 & 594 & 3.94 & 2\\\\\n",
       "\t2 & 0 & 446 & 4.06 & 3\\\\\n",
       "\t3 & 1 & 674 & 3.83 & 4\\\\\n",
       "\t4 & 0 & 525 & 3.62 & 2\\\\\n",
       "\t5 & 1 & 657 & 4.40 & 3\\\\\n",
       "\t6 & 1 & 918 & 4.54 & 2\\\\\n",
       "\t7 & 0 & 318 & 3.09 & 3\\\\\n",
       "\t8 & 0 & 364 & 4.89 & 1\\\\\n",
       "\t9 & 0 & 342 & 3.74 & 3\\\\\n",
       "\t10 & 0 & 387 & 3.00 & 3\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 10 × 4\n",
       "\n",
       "| <!--/--> | promoted &lt;int&gt; | sales &lt;int&gt; | customer_rate &lt;dbl&gt; | performance &lt;fct&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 | 0 | 594 | 3.94 | 2 |\n",
       "| 2 | 0 | 446 | 4.06 | 3 |\n",
       "| 3 | 1 | 674 | 3.83 | 4 |\n",
       "| 4 | 0 | 525 | 3.62 | 2 |\n",
       "| 5 | 1 | 657 | 4.40 | 3 |\n",
       "| 6 | 1 | 918 | 4.54 | 2 |\n",
       "| 7 | 0 | 318 | 3.09 | 3 |\n",
       "| 8 | 0 | 364 | 4.89 | 1 |\n",
       "| 9 | 0 | 342 | 3.74 | 3 |\n",
       "| 10 | 0 | 387 | 3.00 | 3 |\n",
       "\n"
      ],
      "text/plain": [
       "   promoted sales customer_rate performance\n",
       "1  0        594   3.94          2          \n",
       "2  0        446   4.06          3          \n",
       "3  1        674   3.83          4          \n",
       "4  0        525   3.62          2          \n",
       "5  1        657   4.40          3          \n",
       "6  1        918   4.54          2          \n",
       "7  0        318   3.09          3          \n",
       "8  0        364   4.89          1          \n",
       "9  0        342   3.74          3          \n",
       "10 0        387   3.00          3          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# displaying the first 10 rows of the salespeople using head() function\n",
    "head(salespeople, 10)\n",
    "# displaying the same value using a different order\n",
    "head(n = 10, x = salespeople)\n",
    "# the above two codes renders the same result \n",
    "# note that if arguments are used in order, no need to specifies the name of the argument but vice versa "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "355f9ba3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.509524Z",
     "iopub.status.busy": "2023-05-19T14:26:11.508255Z",
     "iopub.status.idle": "2023-05-19T14:26:11.726369Z",
     "shell.execute_reply": "2023-05-19T14:26:11.723232Z"
    },
    "papermill": {
     "duration": 0.242291,
     "end_time": "2023-05-19T14:26:11.729068",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.486777",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# help functions \n",
    "# several ways to see the help documentation \n",
    "# examples with the head() function\n",
    "help(head)\n",
    "?head"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "5e16cd36",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.772457Z",
     "iopub.status.busy": "2023-05-19T14:26:11.771016Z",
     "iopub.status.idle": "2023-05-19T14:26:11.788725Z",
     "shell.execute_reply": "2023-05-19T14:26:11.787393Z"
    },
    "papermill": {
     "duration": 0.041103,
     "end_time": "2023-05-19T14:26:11.790505",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.749402",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "350"
      ],
      "text/latex": [
       "350"
      ],
      "text/markdown": [
       "350"
      ],
      "text/plain": [
       "[1] 350"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "4"
      ],
      "text/latex": [
       "4"
      ],
      "text/markdown": [
       "4"
      ],
      "text/plain": [
       "[1] 4"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# display the number of rows and columns of a dataframe \n",
    "nrow(salespeople)\n",
    "ncol(salespeople)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "63cddc14",
   "metadata": {
    "papermill": {
     "duration": 0.020387,
     "end_time": "2023-05-19T14:26:11.831458",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.811071",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 2.5.3 Writing a function \n",
    "Principle is DRY (Don't Repeat Yourself) when writing a code for several times"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "2c8aad24",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:11.874927Z",
     "iopub.status.busy": "2023-05-19T14:26:11.873474Z",
     "iopub.status.idle": "2023-05-19T14:26:11.907819Z",
     "shell.execute_reply": "2023-05-19T14:26:11.905787Z"
    },
    "papermill": {
     "duration": 0.059001,
     "end_time": "2023-05-19T14:26:11.910298",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.851297",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'This dataframe contains 350 rows and 4 columns, there are 0 missing values in the data frame'"
      ],
      "text/latex": [
       "'This dataframe contains 350 rows and 4 columns, there are 0 missing values in the data frame'"
      ],
      "text/markdown": [
       "'This dataframe contains 350 rows and 4 columns, there are 0 missing values in the data frame'"
      ],
      "text/plain": [
       "[1] \"This dataframe contains 350 rows and 4 columns, there are 0 missing values in the data frame\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'This dataframe contains 32 rows and 11 columns, there are 0 missing values in the data frame'"
      ],
      "text/latex": [
       "'This dataframe contains 32 rows and 11 columns, there are 0 missing values in the data frame'"
      ],
      "text/markdown": [
       "'This dataframe contains 32 rows and 11 columns, there are 0 missing values in the data frame'"
      ],
      "text/plain": [
       "[1] \"This dataframe contains 32 rows and 11 columns, there are 0 missing values in the data frame\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# creating a report function for a input dataframe argument \n",
    "df_report <- function(df){\n",
    "    paste(\"This dataframe contains\", nrow(df),\"rows and\", ncol(df),\"columns, there are\",sum(is.na(df)),\"missing values in the data frame\")\n",
    "}\n",
    "# using the function to teste the salepeople dataframe\n",
    "df_report(salespeople)\n",
    "df_report(mtcars)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9d16169c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-14T08:19:22.699981Z",
     "iopub.status.busy": "2023-05-14T08:19:22.698288Z",
     "iopub.status.idle": "2023-05-14T08:19:22.715354Z"
    },
    "papermill": {
     "duration": 0.020342,
     "end_time": "2023-05-19T14:26:11.951723",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.931381",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 2.5.4 Installing Packages \n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0c028646",
   "metadata": {
    "papermill": {
     "duration": 0.021174,
     "end_time": "2023-05-19T14:26:11.993882",
     "exception": false,
     "start_time": "2023-05-19T14:26:11.972708",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Before usingthe package, it must be installed using `install.packages()`\\\n",
    "ex: to install MASS packages\\\n",
    "`install.packages('MASS')`"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "726d4667",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:12.038422Z",
     "iopub.status.busy": "2023-05-19T14:26:12.037088Z",
     "iopub.status.idle": "2023-05-19T14:26:29.616070Z",
     "shell.execute_reply": "2023-05-19T14:26:29.613963Z"
    },
    "papermill": {
     "duration": 17.60396,
     "end_time": "2023-05-19T14:26:29.618573",
     "exception": false,
     "start_time": "2023-05-19T14:26:12.014613",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages('MASS')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9a84a9ee",
   "metadata": {
    "papermill": {
     "duration": 0.02,
     "end_time": "2023-05-19T14:26:29.659606",
     "exception": false,
     "start_time": "2023-05-19T14:26:29.639606",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Installing more than one packages"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "bfb928fa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:26:29.705355Z",
     "iopub.status.busy": "2023-05-19T14:26:29.703665Z",
     "iopub.status.idle": "2023-05-19T14:28:17.266882Z",
     "shell.execute_reply": "2023-05-19T14:28:17.265233Z"
    },
    "papermill": {
     "duration": 107.588784,
     "end_time": "2023-05-19T14:28:17.269030",
     "exception": false,
     "start_time": "2023-05-19T14:26:29.680246",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing packages into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "also installing the dependencies ‘pillar’, ‘rlang’, ‘tibble’, ‘vctrs’\n",
      "\n",
      "\n",
      "Warning message in install.packages(my_packages):\n",
      "“installation of package ‘rlang’ had non-zero exit status”\n",
      "Warning message in install.packages(my_packages):\n",
      "“installation of package ‘vctrs’ had non-zero exit status”\n",
      "Warning message in install.packages(my_packages):\n",
      "“installation of package ‘pillar’ had non-zero exit status”\n",
      "Warning message in install.packages(my_packages):\n",
      "“installation of package ‘tibble’ had non-zero exit status”\n",
      "Warning message in install.packages(my_packages):\n",
      "“installation of package ‘dplyr’ had non-zero exit status”\n"
     ]
    }
   ],
   "source": [
    "my_packages <- c('MASS', 'DescTools', 'dplyr')\n",
    "install.packages(my_packages)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "61b8d862",
   "metadata": {
    "papermill": {
     "duration": 0.020932,
     "end_time": "2023-05-19T14:28:17.311128",
     "exception": false,
     "start_time": "2023-05-19T14:28:17.290196",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "See the function available in a package using help function\\\n",
    "ex: `help(package = MASS)` to see the function available in the MASS package "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "e84fae69",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:17.358095Z",
     "iopub.status.busy": "2023-05-19T14:28:17.356606Z",
     "iopub.status.idle": "2023-05-19T14:28:17.376658Z",
     "shell.execute_reply": "2023-05-19T14:28:17.374354Z"
    },
    "papermill": {
     "duration": 0.046056,
     "end_time": "2023-05-19T14:28:17.378835",
     "exception": false,
     "start_time": "2023-05-19T14:28:17.332779",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "help(package = MASS)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "ebec7b99",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:17.425541Z",
     "iopub.status.busy": "2023-05-19T14:28:17.423817Z",
     "iopub.status.idle": "2023-05-19T14:28:24.956522Z",
     "shell.execute_reply": "2023-05-19T14:28:24.954422Z"
    },
    "papermill": {
     "duration": 7.559566,
     "end_time": "2023-05-19T14:28:24.959732",
     "exception": false,
     "start_time": "2023-05-19T14:28:17.400166",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages('peopleanalyticsdata')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c4e1df5d",
   "metadata": {
    "papermill": {
     "duration": 0.022711,
     "end_time": "2023-05-19T14:28:25.004670",
     "exception": false,
     "start_time": "2023-05-19T14:28:24.981959",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 2.5.5 Using Packages \n",
    "Functions belong to packages, only by installing and loading it can we use the functions inside a package\\\n",
    "To use the package, we need to load it using `library()` function\\\n",
    "ex: load the package MASS after instaling it using `install.packages()` function\\\n",
    "Note: when using a function, if the name exist in several packages, then R will automatically use the function exists in the moste recently loaded packag\\\n",
    "Avoid 'namespacing': avoid using the name of the functions exist in different packages \n",
    "simply use `package::function()` to avoid specify the function and the package\n",
    "Usually, when a function is called oustide of base R, we use `package::function` to call it to clear confusion "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "54cb2508",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:25.054024Z",
     "iopub.status.busy": "2023-05-19T14:28:25.052159Z",
     "iopub.status.idle": "2023-05-19T14:28:25.088991Z",
     "shell.execute_reply": "2023-05-19T14:28:25.087370Z"
    },
    "papermill": {
     "duration": 0.063822,
     "end_time": "2023-05-19T14:28:25.091390",
     "exception": false,
     "start_time": "2023-05-19T14:28:25.027568",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘MASS’\n",
      "\n",
      "\n",
      "The following object is masked from ‘package:dplyr’:\n",
      "\n",
      "    select\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(MASS)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "6d411e22",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:25.140329Z",
     "iopub.status.busy": "2023-05-19T14:28:25.138790Z",
     "iopub.status.idle": "2023-05-19T14:28:25.168597Z",
     "shell.execute_reply": "2023-05-19T14:28:25.149154Z"
    },
    "papermill": {
     "duration": 0.059666,
     "end_time": "2023-05-19T14:28:25.173229",
     "exception": false,
     "start_time": "2023-05-19T14:28:25.113563",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# checking the documentation of a function\n",
    "# ?MASS::stepAIC "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7ad8a1eb",
   "metadata": {
    "papermill": {
     "duration": 0.022016,
     "end_time": "2023-05-19T14:28:25.217488",
     "exception": false,
     "start_time": "2023-05-19T14:28:25.195472",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 2.5.6 The Pipe Operator \n",
    "The pipe operator uses the output value from the function befrore and use it as an input value to the function next to it\\\n",
    "The pipe operator `%>%` is in `magrittr` package, to use is we need to forst load it using library() fucntion \n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "de4f56ca",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:25.264611Z",
     "iopub.status.busy": "2023-05-19T14:28:25.262217Z",
     "iopub.status.idle": "2023-05-19T14:28:25.294927Z",
     "shell.execute_reply": "2023-05-19T14:28:25.293612Z"
    },
    "papermill": {
     "duration": 0.058059,
     "end_time": "2023-05-19T14:28:25.297147",
     "exception": false,
     "start_time": "2023-05-19T14:28:25.239088",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘magrittr’\n",
      "\n",
      "\n",
      "The following object is masked from ‘package:purrr’:\n",
      "\n",
      "    set_names\n",
      "\n",
      "\n",
      "The following object is masked from ‘package:tidyr’:\n",
      "\n",
      "    extract\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# load the package \n",
    "library(magrittr)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "dbd542ee",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:25.342965Z",
     "iopub.status.busy": "2023-05-19T14:28:25.341499Z",
     "iopub.status.idle": "2023-05-19T14:28:25.360260Z",
     "shell.execute_reply": "2023-05-19T14:28:25.358108Z"
    },
    "papermill": {
     "duration": 0.04545,
     "end_time": "2023-05-19T14:28:25.363589",
     "exception": false,
     "start_time": "2023-05-19T14:28:25.318139",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "388.668393782383"
      ],
      "text/latex": [
       "388.668393782383"
      ],
      "text/markdown": [
       "388.668393782383"
      ],
      "text/plain": [
       "[1] 388.6684"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# select the salespeople with sales below 500 and calculate the mean value \n",
    "subset(salespeople$sales, subset = salespeople$sales < 500) %>% mean()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "81e7eb33",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:25.413748Z",
     "iopub.status.busy": "2023-05-19T14:28:25.412305Z",
     "iopub.status.idle": "2023-05-19T14:28:25.430898Z",
     "shell.execute_reply": "2023-05-19T14:28:25.428586Z"
    },
    "papermill": {
     "duration": 0.046807,
     "end_time": "2023-05-19T14:28:25.433517",
     "exception": false,
     "start_time": "2023-05-19T14:28:25.386710",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "389"
      ],
      "text/latex": [
       "389"
      ],
      "text/markdown": [
       "389"
      ],
      "text/plain": [
       "[1] 389"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "salespeople$sales %>% \n",
    "subset(subset = salespeople$sales < 500 ) %>% \n",
    "mean() %>% \n",
    "round() # rond to the nearest integer "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8a329fca",
   "metadata": {
    "papermill": {
     "duration": 0.022917,
     "end_time": "2023-05-19T14:28:25.479208",
     "exception": false,
     "start_time": "2023-05-19T14:28:25.456291",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Exploring the tyedyverse package "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "3b1e0837",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:25.525767Z",
     "iopub.status.busy": "2023-05-19T14:28:25.524280Z",
     "iopub.status.idle": "2023-05-19T14:28:25.536766Z",
     "shell.execute_reply": "2023-05-19T14:28:25.535060Z"
    },
    "papermill": {
     "duration": 0.03786,
     "end_time": "2023-05-19T14:28:25.539033",
     "exception": false,
     "start_time": "2023-05-19T14:28:25.501173",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "library(tidyverse)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "17e185de",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:25.587558Z",
     "iopub.status.busy": "2023-05-19T14:28:25.586077Z",
     "iopub.status.idle": "2023-05-19T14:28:34.567147Z",
     "shell.execute_reply": "2023-05-19T14:28:34.565486Z"
    },
    "papermill": {
     "duration": 9.009394,
     "end_time": "2023-05-19T14:28:34.570542",
     "exception": false,
     "start_time": "2023-05-19T14:28:25.561148",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages('tidyverse')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "7a3c6668",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:34.619852Z",
     "iopub.status.busy": "2023-05-19T14:28:34.618400Z",
     "iopub.status.idle": "2023-05-19T14:28:34.628077Z",
     "shell.execute_reply": "2023-05-19T14:28:34.626729Z"
    },
    "papermill": {
     "duration": 0.03621,
     "end_time": "2023-05-19T14:28:34.629814",
     "exception": false,
     "start_time": "2023-05-19T14:28:34.593604",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# help(package = tidyverse)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "851dd031",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:34.676742Z",
     "iopub.status.busy": "2023-05-19T14:28:34.675330Z",
     "iopub.status.idle": "2023-05-19T14:28:34.685813Z",
     "shell.execute_reply": "2023-05-19T14:28:34.684363Z"
    },
    "papermill": {
     "duration": 0.037258,
     "end_time": "2023-05-19T14:28:34.688501",
     "exception": false,
     "start_time": "2023-05-19T14:28:34.651243",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# help(help)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3dbc7cd9",
   "metadata": {
    "papermill": {
     "duration": 0.022321,
     "end_time": "2023-05-19T14:28:34.732888",
     "exception": false,
     "start_time": "2023-05-19T14:28:34.710567",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Plotting in base R "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "761eb690",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:34.779061Z",
     "iopub.status.busy": "2023-05-19T14:28:34.777645Z",
     "iopub.status.idle": "2023-05-19T14:28:34.932001Z",
     "shell.execute_reply": "2023-05-19T14:28:34.929726Z"
    },
    "papermill": {
     "duration": 0.179919,
     "end_time": "2023-05-19T14:28:34.934408",
     "exception": false,
     "start_time": "2023-05-19T14:28:34.754489",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# simplest plot function in R is plot() function \n",
    "\n",
    "# explore how to use the plot() function in base R \n",
    "help(plot)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "68cd0d50",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:34.981122Z",
     "iopub.status.busy": "2023-05-19T14:28:34.979559Z",
     "iopub.status.idle": "2023-05-19T14:28:35.245522Z",
     "shell.execute_reply": "2023-05-19T14:28:35.243536Z"
    },
    "papermill": {
     "duration": 0.292421,
     "end_time": "2023-05-19T14:28:35.248660",
     "exception": false,
     "start_time": "2023-05-19T14:28:34.956239",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nf/6RZhgeHh5v3rxZu3Ztu3bt3r59y+VyJ06c+PDhw4MHDwqO/fwqfKvo48ePYrd++PCB3Kel\nSR7J5cuXKyoqdu7cSWZ1GI1GO3z4MJPJPH369DdU2yyHUF9DhYWFZWVlsODbd2jdunWxsbFD\nhgzBN/3r6ur09PSWLl2anJxsb28v9iG7du26evUqQojL5cbHx+vq6vr5+b1+/Zq88Izft199\nO82aNevVq1e+vr4cDic+Pl5BQeF///tfTEzMsmXLmvUQgbyT8a3gtgD62LVdCQkJqqqqioqK\nu3btysrKIggiPz//6NGjGhoaLBZLtNNb61dVVaWsrNyjRw+hPkAEQdTW1lpaWmpqanK5XClE\nUlxczGQyHR0dRSe4r6ysNDIyMjIywpumTZuGEKpvEua+ffsaGRmR/5aWlrJYrL59+4pWW1VV\n1aFDBwMDg+bqbLR06VKE0P3790U3/fLLLwhW8QKN0aFDh3bt2ol9n/fr14/BYBQWFko/KtBC\noI8dALKxfPnysrKyW7durVixQk9PDyGkqak5b948PI/8woULZR1go7FYrMWLF8fFxc2bN6+2\ntpYsr66unjVr1tu3b5ctWyZ2soZmp6qqOm/evIiIiCVLlghO11JeXj558uS0tDQ/Pz98MbKi\nooJOp7PZbLH1qKiolJeXC/67YMGCp0+f+vr6ClZbUVExderU1NTUlStXNldnI19fXzabPW3a\ntFevXgmW//3332vWrDExMZH+dCeg7fLz88vIyJg0aZLg+5nH4y1btiwsLMzb21tq8xCB7xz0\nsQNyq6Cg4Pbt26NGjerfv7/Qpq5du86aNevw4cMNT+beOq1fvz4qKurkyZN3797FnfYyMzOv\nX7+ekZExZsyYFStWSC2SHTt2xMbG7t+//6+//ho9erS2tnZaWtq1a9dycnKmTJkyf/58vFu7\ndu14PN779+/Fdmh79+6d4Kz9CKGtW7fGxMQcOnTo1q1bo0eP1tHRSU9Pv3btWnZ29sSJE3/8\n8cfmir99+/Znz56dPHmyjY3NiBEjevXqheex+/fff9XU1K5fv85isZqrrUbJycl58uRJbm6u\nvr6+vb295GNrgAz973//e/z48blz58zMzDw9PY2NjfPz82/evJmUlOTk5ITnNwZAGmR9ybAN\ngFuxbdSjR48QQnv37hW79eLFiwih69evSzmqZsHj8X7++WfBfKhDhw4HDhyQ/oQINTU127Zt\n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\ng/EN0NaDRqPp6+vLOoo2Cf+u09HREbtVV1eX3Kct4nK5wcHB4eHhZWVlGhoaLi4ubm5uQksh\ngxYCiR0ALUtLSysjI0Pspry8vJqaGkmyExny8PB4+fLlvn37goOD79y5o6SkhFMQLy8vCoUS\nERExZcqU1NRUcn9/f38bG5vAwEDc6UrmtLS0IiMja2pqhO5+IoQIgsjMzLSwsJBaMMePH1dR\nUTl06JDQQGMLC4uNGzcuXLjwr7/+mjBhwuPHj0+ePBkYGPj48WM8OcuCBQt+/PFHNTU1qYUK\nWho+8TMzM8VuxR8arfzDoT6PHz+eMmVKSkoKWeLv729tbR0YGNi5c2cZBvadgPQZgJbVv3//\nhIQEsXPxX7x4ESHk7Ows9aAax8jIaO/evW/fvq2uri4oKLh79+748eMpFEpUVJS7u3t+fr6/\nv39SUlJRUdGrV6+WL1/+4sULFxeX9PR0WQeOEELOzs41NTXXr18X3RQSEpKXlyfN5z86OtrJ\nyUnsLGVDhw5FCEVFRSGEFBQUfHx8IiIiysrKKioqYmNj169fD1mdnOnZsyeHw7l06RKfzxfa\nRBDEpUuXlJSUevfuLZPYmiI2NnbQoEE5OTnbt29/9+4d/lhYuXLl69evXVxc8Gh60LJkfS+4\nDYA+dqApXr16RafTO3Xq9OHDB8Hy0NBQFRWV9u3bk12p2hxbW1sWixUVFSVUjrOoyZMnyyQq\nIYWFhZqamlpaWtHR0YLlCQkJxsbGioqKHz9+lE4kXC6XQqFMnDhR7FZ8R1jm3RaBNK1ZswYh\ntHDhQi6XSxbyeLylS5cihJYvXy5hPSkpKZs2bRo6dKirq+vUqVMDAwPr61QqBfb29goKCk+f\nPhUq//333ykUyoQJE2QSVbNrzX3sILH7OkjsQBMdOXKEQqEoKyvPnTv3yJEj+/fvHzNmDJ5Z\nrZUs6/4N8Ey5CxYsELvVzc2NxWK1kp7+d+7cUVBQYDAYEyZMOHjw4OHDh6dPn85iseh0+qVL\nl6QZiba2dn1jNfC1uo0bN0ozHiBbVVVVLi4uCKHOnTtv3Ljx2LFjmzdv7tKlC0KoX79+Ev7k\n27VrF15KmM1ma2pq4n5sVlZWCQkJLR2/qISEhAZ+nwwePJjJZLbmCZ4kB4ld2waJHWi6O3fu\n4JlIMSqVOnz48Ldv38o6rm936dIlhNC1a9fEbsUTccXExEg5qvrExsYKDelwcHAIDw+XchiT\n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\nHz6gZLOdwdra2sbG5ujRo2i/IbM9IyNj8uTJJBJp7dq1nRyCCboCYmJiXK3o6jU3N3fVcL/L\nqlWrxMTEpk6dmpyczNp+9uzZ4ODgYcOGubq6CkobDg4n8vLyCxcufPXq1aJFi1paWpjt379/\n9/T0rKys3LhxowDldSv4GjscHJxuR0ND4+PHj21tbSIiImymb9++/fz5U1NT83f7DA8Pp9Fo\ngYGBZDKZzbR27doDBw6EhYUtXbq046IBMAy7du2anZ3dsmXLjh07Nnr0aHFx8fT09CdPnmAY\ndubMGUNDw870zwq6ArxicqhdQ0PjP/v5+vXrixcvvn79KicnZ25u3lUKtbW1L1++7Ovra2Zm\nNnr0aCMjo5aWlufPn6elpWlqaoaHh3fVlLTw0Nra+vLly8zMTDqdPnDgQDs7O15uN45wsmfP\nnoyMjBMnTkRFRbm6uiooKHz58uXevXsNDQ0BAQHe3t6CFthtCHr3Rg8A3xWLg9NJ9u7dCwD/\n/vsvpwnVsQ0PD//dPqdPnw4AvDItOzg4KCoq/rZQbtTU1KxduxYl5AMAUVHRcePGdXmpdSqV\nqqysrKmpyVlU4MePH4qKigMGDPhPnbNmzULFHpjY2trm5OR0lciPHz96enqiYnQAoKSktGLF\nis4n8RdCwsLC+vbty3olFRUVT5w4IWhdOL8HlUo9ePDggAED0JtIIBAsLCx4bZX9LYR5Vyzu\n2P03uGOHg9NJ6urqNDQ0KBTKxYsXUfVVBoPR2toaHBxMIBDMzMyYje3n1/WdnJyc5OTkOiX6\n/0Kn00tKSvLz87uv8MCJEycAwMbGhjXBSnZ2Nip0wbWAKZP6+np0mJOT09WrVxMSEqKioubM\nmUMkEhUVFT9//tyFOltaWgoKCkpKSoQ2AWEnQWmKVVRUduzY8eLFi5cvX+7bt69fv34AsHXr\nVkGrw+kI5eXleXl5nL+aOowwO3b4VCwODk63Iykpee/ePVdX1xkzZmzatMnU1JRGo719+/b7\n9+8GBgYRERHtmcirrKy8c+dOeno6jUbr37+/goICg8H4+PGjmZkZ25F0Oj01NZWtwGsnwTCM\nLYTT5cyfPz83NzckJERXV9fCwkJFReXr169v375lMBg7duzw8vL6xbm7du1KTEzcvHnztm3b\nmI1ubm4TJ0708PCYN2/eixcvukonmUzW0tLqqt6EjcLCQn9/fz09vdjYWGaY1srKau7cuU5O\n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\n3a/xT6GiokJERMTKyopzRr6srExGRsbU1LTDnf86mtW3b99Ro0Zxtr9+/Zrrw4VAziI/Y6I3\nb94EgK1bt3Ka7ty5AwD//PMP38QwGIzIyEgAuHz5Mlcr8phfv37NT0l4xA4HB0eoaWlpAQC0\nNyIoKKisrOzChQtr1qyRkZEBAAaDAQCBgYH6+vqbNm1iq7VKoVDQ6d2NlpbWjBkz7t+/7+/v\n39raymzPzc11d3dvaWnZtGkTH2R0DBsbG1tb22PHju3fv59OpzPbExMTp0yZIioqKiYm5uvr\n+/btW6aJTqcfPXp0//79I0eOZNaVwuk8CgoKixYtevXq1bx585qampjtRUVF7u7uNTU1mzdv\n7nDnzc3Nv8gpzethYX0AuZ6Feu6wqt9lwoQJQ4YMCQoKOnv2LIOl/t6LFy9mz54tIyOzfPly\nvokB4bs+Qg5eeQJHWKitrY2Ojs7NzSUSiQYGBg4ODmzJWnE6RlJSUnx8fENDg5KSkoODA9ds\n7GivWUZGBgDcuHHDyMhoypQpTCv6ZCcSievWrfvrr78ePHgwbdo0pjUjI6Nfv37d/SoQR44c\nycvLO3DgwPXr10ePHq2oqPjp06fo6GgajXbgwAG0Pl04wTDs2rVrDg4Oq1atOnr0qL29vaSk\n5IcPH+Li4kRFRa9cuUImk729vUeNGmVpaTls2LCmpqbnz5/n5ub2798/PDwcLRDE6Sr27Nnz\n6dOn06dP37lzx8nJSVVVNScn58mTJ62trYGBge7u7h3uuV+/fqmpqTU1NehHESu1tbXFxcVs\nWZERrA8gJ6idb08ZAJBIpIiICAcHhzlz5uzdu9fW1pZMJicmJsbHx0tJSUVERKioqPBNDLBc\nH64FY1BNWH5eH2FHwBHDngA+Fdvd0On04OBgKSkp1jtTVVX1+vXrgpbWs8nIyBgxYgTrVSUQ\nCL6+vlVVVWxH0ul0LS0tZWXlgoIC+L8JSCsrK1GZbR8fH/QBumXLFqYVJa1dtWoVf14Rg8Fo\nbW3dv3+/vr4+ekUUCmXs2LG8FsILG3V1dZs3b2Z+A0lKSk6ZMiUtLQ1Zs7KyfH19mQ+Curr6\n+vXr8U3f3QSNRjt+/PiQIUPQ1RYREXF0dOx8erbz58/z+r5AlQ9RDIwTAwMDOTm5srIytvaa\nmhoNDQ1VVVX+13uoqqpas2YNWh4KADIyMjNnzmQtU8s3qFSqqqqquro65+NQVlYmJyc3aNAg\n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\nMhiMM2fOAMCjR4/4rAqnAwizY4evscMRMKqqqjdu3Jg4caKvry+DwejTp8/atWvj4uKSk5NV\nVVUjIiLIZPLatWsPHDgQFha2dOlSwaqtqKh4/vx5cXGxhISEqakpZ0VqgXD9+nVRUdHAwEDW\nxuDg4MzMzJiYGACYO3fuuHHjvnz5cu/evYaGhnXr1nl5eXVgFE1NzUWLFrG1i4uLb968edKk\nSWFhYTo6OgUFBSIiIkZGRqNGjfrFysjXr18XFxdv3769b9++bCZHR0cnJ6e7d+82Njaiido/\nDZRK5tOnT1ytWVlZAKChoYH+ra6ujomJKSwsFBMTGzZs2IgRIzq2Ig11mJWVxZbUmjmohoZG\n9611Q780goKC0HQ8K5s3bz5y5EhYWBhaQsBJS0vLy5cvs7KyGAzGwIED7ezseNWeEvjz+1vv\nLA5OBxGwY9kTwCN2fODTp0+spa7k5eUXLlzIOivk4OCgqKgoQIXNzc2rVq1iq3JmYmLCnDYS\nIAMHDjQyMuJsb2trO3DgANO7IhAIFhYWUVFRHRiCRqP9YodyUVERAJDJZNaLM2DAgF/k8f/3\n338BgNcBW7ZsAYDMzMwOSO0F0Gg0dXX1Pn36cCYZqa6uVlVV1dTUpNPpra2tGzZsYPN9DQ0N\nO5ZZ8P379wAwdepUTtOjR48AYMmSJR15Me1j4sSJIiIivLL0jRw5sl+/flxNV65cYZZGQCgr\nK3Om8xWS55dGo6mpqamrq3NGRisrK5WVlXV0dLovLIrThQhzxA7faYgjFOjp6Y0aNQrDsJyc\nnOLi4h8/fhw7doy1HCGRSKTRaIKSR6PRPD099+3bZ2xsfO7cufj4+IcPHy5fvjwrK8vGxoa1\ncLug5HHGOQCARCKtWLFCUlLSwcEhLy+vpqbmzZs3bm5uHRiCTqfT6XSuowDAunXrAEBSUvLY\nsWOvX7+Ojo5ev359eXm5i4sLmlXkqhkAeHWInFEBvuOChUAgBAUFff361dXVFRV5Q+Tn57u6\nupaVlaEs076+vjt27NDT0zt16tSbN2+ePHmyevXqL1++2Nvbo0jtbzF8+HBPT89r166tWrWq\nsbGR2X7//n1fX19paem1a9d2yavjCo1GIxAIvCKCvB7/0NBQVLZ4165dsbGxL1++3Lt3r6io\n6Ny5c3fu3MnauZA8vwQCYfv27SUlJa6uroWFhcz23NzcsWPHlpeXBwUF9aYtwDiCQdCeZQ8A\n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\nuXKFvxFCEMQvPV480RFRXHvruRcrlaiXguy+tTH6KyaIF16/fr1169a5c+cuXLhw7969+fn5\n/I5o6MvNzd21a9eCBQvmzp27ffv2zMxMrB3biv7Vq1dcj0pLSxMTE5OTk+PsEhUVTUxMVFRU\nXL16tays7KRJk8aNG4dVGJ48eXJERATb4xcuXCgvL5+VlRUdHV1dXW1vb6+kpOTk5MRkMp8+\nffr69eudO3cuW7aM9fhJkyaNHz8+Pj6+Xy4f4p3bt29TKJQVK1Zwdq1Zs4ZAIMD/RAgavvo+\n6Pd64xgAwN3q1r6fSjAN9lux9fX1c+fOxf67WXOzEAQJCgrqr2mkEBs6nb569eqOv23sB29v\n76ampqamJmlpaWVl5Z8/f7IdePv2bQCAn59fFydvaGg4evTopEmTFBQUVFRU5OXl8Xh8e3s7\n1wfb2NiMGDECRdHCwsINGzaMHTtWWFgYADB//vz09HTOx/v5+QEAGhsbe3vp0EAwNDTU1dXt\nrHfUqFEWFhYDGQ8EDTdD4VZsF0rf1SJ4qp0kLD0qiFAUnTNnzrVr1+bMmZOenk6n02k0WkpK\nysSJE0NDQzds2MDvAIemlStXnjx50srK6tGjR9iuX2lpaa6urtHR0Z6ensLCwocPHy4qKrKy\nskpJSWEwGACA+vr6Y8eOzZ8/X0ZGZvfu3V2cXEREZN26dU+ePCkpKSksLMQmzre3c9+vuaWl\nBbvTqqKiEhoampWVhZUd2bt3r6kpl7riLS0tCIIQicR++C1APEMmk1tbWzvrbW1thbWgIWjY\n6u6q2La2Ns5GZnvj27vh3infKSO88f0aFtRfrl69mpSUtHTp0rCwMKwFQRBbW9vJkyfb29uf\nOHHCz89v4Mtwf//+/dy5c48fP66vr5eQkJg6deqSJUu43nwcjF6/fn3u3DkHB4f4+HjW/Kfx\n48fHxcX5+PhcuHAhPj5+0aJF9fX1QUFB06ZNExYWlpaWLisra29vV1NTu379+qhRo7r/dAYG\nBiiKpqam2tvbs3XV1dVlZmZOmTKlY+Po0aMBAI8ePeq4mSymvb396dOn2tranAtyeyc7O/v8\n+fOvXr1qbW2Vl5d3dHRctGgR51pgqKcMDAwiIyMLCgo46xW8f//+58+fBgYGfAkMGgA1NTXn\nz59PTk6urKwUFhY2NzdfunSplpYWv+PqsR8/fvzzzz8PHjyora0VExObPHny0qVLlZSU+B3X\n4NfNkb0uzoDD4ZfHFPBuUJHvBvWtWFdXVyKRWF1dzdn18uVLAMDWrVsHOKSoqCjsbqCEhISm\npqaYmBgAQExM7Pr16wMcCY8EBgYCAN69e8fZVVZWhsfjWWXqCgsLd+zY4eDgYG5uPnfu3H/+\n+YfrrhJd+/r1K5FINDY25rx/unTpUgDAxYsXOzbW1dVJSUkpKyuXl7NvG4Mtm+ivLSJYW2vI\nyspqampim8kqKyt3thwY6j5s6zY3Nze2W/A0Gs3Ozg6Hw7169YpfsUE89fDhQ1lZWQAAlUrV\n1NTEykYKCQkdPXqU36H1zI0bN1gf/pqamhISEgAAYWHhqKgofofWLYJ8K7a7id2cTvgErA9P\n+srTEPluUCd2mpqaxsbGXLuYTCaRSJwxY8ZAxpOYmIggiKqqakJCAjbDr729/caNGwoKCkJC\nQk+ePBnIYHjE3t5eXFy8s14dHZ0xY8b07zPu27cPAGBgYHD9+vXq6urm5uYnT564uroCABwd\nHZlMJtvjo6OjcTicsrLyv//+W15e3tra+ubNG19fXwCAkZFRL5JLTocPHwYATJgwgZXGNTc3\nnz59mkqlSktLFxcX9/0phjns/2vKlCnJyckNDQ319fWJiYkTJ04EAKxatYrf0UE88fHjRxER\nEQkJicjIyLa2NhRFmUzm48ePsQHayMhIfgfYXU+fPhUSEpKXl79x4wb25YTBYCQmJqqpqSEI\nkpCQwO8Af20oJHbD2aBO7JSVlSdOnNhZL5VKdXZ2Hsh49PT0xMXFv337xtaem5tLoVAmTJgw\nkMHwiLW1taysbGe9XU9777WDBw+yTavC4XBeXl6cm1tgIiMjsa/LHTk4OPz48aPvwVRXV4uI\niOjr63MOImKrQ5YsWdL3Zxnm2traOi7QwRAIhI0bN3a2kgYa7GbOnIkgyNOnT9naq6qqlJSU\nZGRksJqUgm/ixIlkMrljcU3Mt2/fxMXFdXR0+BJVjwhyYteTxRNoW3LUiY1bYlgNzrO9DoTd\namJ2daMW4i9VVdXc3Fw6nc7ZVVBQ0NTUpKqqOmDBvH///uPHj/7+/pxl8XV0dDw8PNLS0oqK\nigYsHh5RVVX9+fNneXk5Z1dLS8uXL1948TvfuHFjYWHhiRMnFi9e7OPjs2vXrrdv30ZHR3c2\noc3X1/fbt29hYWHLli3z8vLatm3b8+fPsRrFfQ8mMTGxsbFx48aNVCqVrcvFxWX8+PE3btxA\nu5zgAf0SkUj8888/c3Nz//jjD19f30WLFoWGhn769OngwYN4PJzzPAQ1NzcnJCQ4ODhYWlqy\ndUlJSQUGBlZWVqampvIlth75/v37y5cvPTw8dHV12bqUlZWXLFmSl5eXnZ3Nl9iGhu4unmDS\nKwImGZ57VSE6KujQgTlY472b/yXeuHj0b5/slxFyQv2wwBbqd25ubo8fPw4LC1u5ciVb18GD\nB7EHDFgwWPE8rosxAQDjxo0LDw//8uXLQO6GhKJoTU0NkUjs/ox+BoNRV1dHJpOxmYKc3Nzc\nIiMjQ0NDjxw50rG9qakpNDS0ubm5p79zOp3e0NBAoVAoFEoXD5OTk1uzZk33TyshIbF06VJs\nHl7/6vo/2tTU9NWrV1VVVZy7ykI9paWltWnT0KwP/8s3WjfV19czGAxJScn+CoxfiouL29ra\nxo0bx7UXa8/Pz+dcRCVosM+HX17IwK/qGzK6m41lhDife1Vh5rM3KWUjq7G2OPvwssk/M6Ls\nN73gTXhQX61YsUJNTW39+vWnT59mjds1NDRs3Ljx77//trOzc3Bw4G+E/JKTk+Ph4SEhISEt\nLS0qKqqtrb1///6WlpYuDklPT589e7a4uLi0tDSVSjUwMDh27BjnaKi7u7uFhcWxY8d27NjR\n1NREp9OPHTs2evRoERGRXbt2IQiSlJT05s2b7gT54MEDR0dHUVFRaWlpERGRcePGRUREwLEu\naGh79erVzJkzWW80Q0PDEydOdFbQpzO1tbVbtmxRUVERFxeXkpKSkZFZunRpYWEhb0KGIEHS\nzVu2rtIUqqwXt4kbjAB5EbKkfX/dGxZAg3qOHYqiHz9+VFdXBwBIS0tPnTp18uTJ2A0yc3Pz\nqqqqgYzk/fv3AIB169Zx7V28eDHoZI/UfhcTE0Mmk3E4nKWlZUBAgLe3N7bGfsyYMRUVFVwP\nCQ8PJxAICILY2NgEBAR4enpi9VksLCzq6+vZHlxeXo6NV4mIiGBT2bC5UBISEhMnTkQQREhI\n6Pz5810HuXv3bhwORyQSnZ2dAwIC5s2bh406uLu702i0/vlF8MZ///0HAMByUE7jxo2TkpLi\nXNIBQSiKnj17lkAg4PF4W1vbgIAADw+PkSNHAgAmT57c2YRRTqwJD5qamn5+fsuWLcPej+Li\n4qmpqTyNn3eamprIZLKjoyPX3tDQUABAUlLSAEfVC8XFxTgcrrMy7OvXrwcAZGdnD3BUPSXI\n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\nRdHR0adOnfrll19iYmImT54cGxt7+fLlBg0a6EZeunSpV69e1tbWBw8efPjwYXh4+LVr127e\nvNm0adMlS5Z88803b9r77du3nZycSpYsmb2rTJkyjo6Ot27d0tc7BQDkBwUs2J37bmy5Es7N\n2vX4bPyo7h2alXBusPny8yxj9o33zvJMdxROycnJCxYs0B3fsrS0LFWq1MiRIx88eGDIGrRa\nrW7pa3br1q1LTU21s7ObPHmymZmZrtHa2nrRokWjR48+duxYcHCwrnHGjBkajebgwYNt27bN\nfLmrq+vBgwcrV648e/bsNy2D0Gg0b9q7EEImk2k0mnd8YwCAfKkgBbvon2Y1GrHimca6//jp\n365ePmVoB/Ho54H1qmx/yOI+ZPXkyZN69er5+PjExcX17NlzwIAB9vb2q1evrl69+rFjxwxW\nhouLy8uXL2/fvp29a/fu3UKImjVrZu+aOnWqTCbbu3evECIpKSk0NLRdu3bVq1fPMszc3Hzs\n2LGJiYlhYWFv2ntERERsbGz2rqioqMjISFdX1//6jgAA+VlBCnbrBiwTckv/y39s9Js7avgY\n37X7b4YtMVM/8246PMdzsii0tFqtl5fX9evXfX19IyIifvzxR39//ytXrhw6dEgul3fu3Dkq\nKsowlXTr1k0IMWvWrOxdv/76qxDCy8sre1eZMmWKFSume+DE48eP09PTs6c6HV37mx5N0b17\n94yMjByvsfvqq680Go2uPOAdPH78+JdffomMjDR2IQD+oSCtil11/6Vd1TX9qhTLbHFsNi5s\n9o76MwK6ff9F8DD3d9imWq0ODg5OTU19yxjdv5qctCpAQkNDT506NW7cuClTprze/tFHH/n7\n+3fs2HHJkiWLFi0yQCXNmzfv0qVLQECAUqmcP39+6dKlhRAvXrxYtGhRbGysmZnZwIEDc3xh\nenq6biGF7r/p6elvGiaEUCpz/iB369atSZMmS5cu1Wq1M2bMsLe3F0I8ffp09uzZq1atatWq\nlW4RLpB7arV6+fLlS5cuzfx1omLFihMnThw+fHj2FUIAjEBbcBRTysu2DsnSqMmIa1vcXGVe\n8VpSuq5lXnmb3L+v0NDQXP6PGjhwoD7fDPLS+PHjhRC3bt3KsbdcuXLVqlUzWDGJiYkdOnQQ\nQshkMldX18qVK+tyWLFixZRK5bNnz7K/RHcwb8KECVqtNi0trUiRIo0bN85x4/PmzRNChIWF\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "plot(x = salespeople$sales, y = salespeople$customer_rate, xlab = 'Sales in million $', \n",
    "     ylab = 'avg customer rating', main = 'sales vs customer rating', frame.plot = TRUE)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "5d75044e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:35.299495Z",
     "iopub.status.busy": "2023-05-19T14:28:35.298121Z",
     "iopub.status.idle": "2023-05-19T14:28:35.377932Z",
     "shell.execute_reply": "2023-05-19T14:28:35.376636Z"
    },
    "papermill": {
     "duration": 0.108392,
     "end_time": "2023-05-19T14:28:35.380575",
     "exception": false,
     "start_time": "2023-05-19T14:28:35.272183",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\novixAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# generating histograms using hist() function \n",
    "salespeople$performance <- as.numeric(salespeople$performance)\n",
    "hist(salespeople$performance, breaks = 0: 5, \n",
    "     xlab = 'Performance Rating',\n",
    "     main = 'Histograms of Performance Rating')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "3f440968",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:35.431042Z",
     "iopub.status.busy": "2023-05-19T14:28:35.429802Z",
     "iopub.status.idle": "2023-05-19T14:28:35.580316Z",
     "shell.execute_reply": "2023-05-19T14:28:35.577026Z"
    },
    "papermill": {
     "duration": 0.178198,
     "end_time": "2023-05-19T14:28:35.582465",
     "exception": false,
     "start_time": "2023-05-19T14:28:35.404267",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# box plot \n",
    "# see the documentation of boxplot using help () function \n",
    "help(boxplot)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "id": "ad233ac2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:35.630327Z",
     "iopub.status.busy": "2023-05-19T14:28:35.629193Z",
     "iopub.status.idle": "2023-05-19T14:28:35.721686Z",
     "shell.execute_reply": "2023-05-19T14:28:35.718584Z"
    },
    "papermill": {
     "duration": 0.119049,
     "end_time": "2023-05-19T14:28:35.724131",
     "exception": false,
     "start_time": "2023-05-19T14:28:35.605082",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# boxplotting the sales against performance \n",
    "boxplot(formula = sales ~ performance, data = salespeople,\n",
    "        xlab = 'performance rating', ylab = 'sales in million $',\n",
    "        main = 'boxplot of sales by performance rating')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7e355b72",
   "metadata": {
    "papermill": {
     "duration": 0.024634,
     "end_time": "2023-05-19T14:28:35.773864",
     "exception": false,
     "start_time": "2023-05-19T14:28:35.749230",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 2.7.2 Other plotting and graphing packages \n",
    "`ggplot2`, and `plotly` used to illustrate 3-D graphs\\\n",
    "Also quicker exploratory analysis using `GGally` , one of the popular function is `GGally` is `ggparis()` function"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "d0de3de2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:35.826661Z",
     "iopub.status.busy": "2023-05-19T14:28:35.825129Z",
     "iopub.status.idle": "2023-05-19T14:28:48.611350Z",
     "shell.execute_reply": "2023-05-19T14:28:48.609902Z"
    },
    "papermill": {
     "duration": 12.816223,
     "end_time": "2023-05-19T14:28:48.613870",
     "exception": false,
     "start_time": "2023-05-19T14:28:35.797647",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Registered S3 method overwritten by 'GGally':\n",
      "  method from   \n",
      "  +.gg   ggplot2\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# install GGally package\n",
    "install.packages('GGally')\n",
    "\n",
    "# Load the package GGally\n",
    "library(GGally)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "ca415cd7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:48.667533Z",
     "iopub.status.busy": "2023-05-19T14:28:48.666292Z",
     "iopub.status.idle": "2023-05-19T14:28:51.875679Z",
     "shell.execute_reply": "2023-05-19T14:28:51.874176Z"
    },
    "papermill": {
     "duration": 3.240043,
     "end_time": "2023-05-19T14:28:51.878589",
     "exception": false,
     "start_time": "2023-05-19T14:28:48.638546",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.\n",
      "\u001b[1m\u001b[22m`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.\n",
      "\u001b[1m\u001b[22m`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.\n",
      "\u001b[1m\u001b[22m`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.\n"
     ]
    },
    {
     "data": {
      "image/png": "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\n4YdTrYVAIGDjlF+887r6DJd7b58GJw9etNRuPXpW99LjmwwWSww7QqWlU6dOvXv3BhGxXuGH\np59+Gnum0UuXLk2YMKFx48bdunW7+eabYdKnmHG8br755nr16in/Llq06I477ohZlyRJ33zz\nTTzrbctx6tQpuKwyElmWv//+eyWocqJYrdbkpG212+1aqQiMOEGmPy6XC3anO++8MzK3B4FA\nyHR617Ec/NUDAKh2bT3nF5cBADSXDUSjTsPEsCNUZpYvX15cXNywYUOGYaxWa/v27ffu3du1\na1e8tQSDwV69em3evDnRiKzl4seyLLtmzZo4RxNdLldCdQEAPvnkE61wd5988kmipSUZlmU7\nduwYneuJoqjbbrstJZKSw7Jly+Bw3aRJk1KthUAg4KTv/NHvPPr0t6d/K6Palp549effz324\neSeffZPBYpO3eEIOl7y6auVbH315yU/Xrt/ozvtH395aPXQqgYALmqb79evXr1+/YDBYcQNL\nmzdv/v777xF2zMvLK/cNwzBvvvnmunXrnnnmmQsXLoTDYVmWo60xnue1Ig/roDXfSlFUIBBI\ntLTk89hjj3344Yc+n09xnYTZAqZMmZJaYRXHxYsXV65cCQDo3bs3Ga4jECoZa+euLfn98oND\n3of/Dr7vIM1Y739ikMFik2fYvT1/0sbvsoY8MKGwjvWrd19aNmecb+kLveqrJ+TGxcqVKzPi\niYXA6tWrEw2rVpWp0OnC/fv3J5pqFgCgtWIXADB06NChQ4cCANavX//vf/+73K8URd11110I\n+d21LANJkjLCaGjatOnevXtnzpz53nvvhcNhlmV79uw5a9asOnXqpFpaRbFgwQK3282ybKVf\n9ksgVEHeOekcv+S/bXL/upk7atax80YDcybJsBMDZ1YcuXjL/KIezXMAAI0KW/x26N7Xln3T\n64nrkiOAQKg4Yubg0mLUqFEWiwWGhfv9998vX76cn58fmbi9f//+H3300datW6HhCP82a9bs\nscceQ6iuTZs2zZs3P3r0aKQNStO0IAhpm8K1HPn5+Zs2bQoGg7///nvt2rW1vO4qB2fOnHnu\nuecAAP369SOLYQmEyseGV16x5VSLDFonia7Ro6dAt1pkkmXY+X9qkJfXLV/JDk61zjYddKqs\ncSMQMo68vDwt7zqKoiiKUh3MkySJoqgZM2bQND1z5swff/wRAEDT9IABA2bOnAlTgTEMs3z5\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# convert performance and promotion as categorical data \n",
    "salespeople$promoted <- as.factor(salespeople$promoted)\n",
    "salespeople$performance <- as.factor(salespeople$performance)\n",
    "\n",
    "# pairplot salespeople data\n",
    "GGally::ggpairs(salespeople)\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1b267be8",
   "metadata": {
    "papermill": {
     "duration": 0.026607,
     "end_time": "2023-05-19T14:28:51.931795",
     "exception": false,
     "start_time": "2023-05-19T14:28:51.905188",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 2.8 Documenting the process of learning using R markdown"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "id": "391d61fd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:51.989696Z",
     "iopub.status.busy": "2023-05-19T14:28:51.988400Z",
     "iopub.status.idle": "2023-05-19T14:28:51.998739Z",
     "shell.execute_reply": "2023-05-19T14:28:51.997210Z"
    },
    "papermill": {
     "duration": 0.04067,
     "end_time": "2023-05-19T14:28:52.000753",
     "exception": false,
     "start_time": "2023-05-19T14:28:51.960083",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# install R markdown package and load it \n",
    "# install.packages('rmakrdown')\n",
    "# library(rmarkdown)\n",
    "# Since this version is the kaggle notebook version, which does not support R markdown, so I will juste skip this code "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "aa6035c3",
   "metadata": {
    "papermill": {
     "duration": 0.025377,
     "end_time": "2023-05-19T14:28:52.051539",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.026162",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The heading a of commun R markdown file \n",
    "`---\n",
    "title: \"The name of the document\"\n",
    "author: \"the name of the author\"\n",
    "date: \"15/05/2023\"\n",
    "output: html_document / pdf_document\n",
    "---`\n",
    "\n",
    "But to export the document in pdf format, LaTex is required to install, but don't worry using\\\n",
    "`tinytex` package and `install_tinytex()` function, most needs will be met \n",
    "\n",
    "#### A bit of R Markdown formatting \n",
    "\n",
    "```\n",
    "# top heading \n",
    "link : [how the link is shown](the link)\n",
    "image: ![](path to image)\n",
    "```\n",
    "\n",
    "Codes can be written and executed in the R markdown file\\\n",
    "`r nrow(salespeople)` will display the number of row of salepeople dataset\\\n",
    "\n",
    "Code block can be surrounded by triple backticks\n",
    "```{r}\n",
    "# show the first row of the salespeople dataset\n",
    "head(salespeople)\n",
    "```\n",
    "\n",
    "Note that the wrapping `{r}` specifies the language of the code block,\\\n",
    "thus if you want to run the python code replace `r` with `python`\n",
    "\n",
    "If you want to only display the result but not the code, it is also possible\\\n",
    "```{r, echo = FALSE}\n",
    "```"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "90980fd1",
   "metadata": {
    "papermill": {
     "duration": 0.026222,
     "end_time": "2023-05-19T14:28:52.103778",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.077556",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Discussion Questions\n",
    "1. Describe the following data types: numeric, character, logical, factor.\\\n",
    "- Answer: numeric:numerical data, either integer, integers values can be also represented with an `L` right next to the integer\\\n",
    "character: character strings quoted with single or double quotes\\\n",
    "logcial: TRUE or FALSE\\\n",
    "factor:categorical data \\\n",
    "2. Why is a vector known as a homogeneous data structure?\\\n",
    "- because vector is contained of homogenous data types\n",
    "3. Give an example of a heterogeneous data structure in R.\\\n",
    "- strings and factor\n",
    "4. What is the difference between NA and \"NA\"?\\\n",
    "- NA represents missing data while \"NA\" is a string \n",
    "5. What operator is used to return named elements of a list and named columns of a dataframe?\\\n",
    "- []\n",
    "6. Describe some functions that are used to manipulate dataframes.\\\n",
    "- `cbind()`, `rbind()', \n",
    "7. What is a package and how do you install and use a new package?\\\n",
    "- package is a set of programmes grouped together, to use a package we need to install it using install.packages() function and then use library() function to load it, to use any specific function in a package, we need to specify the package name and add the function name using :: such as `packagename::functionname()`\n",
    "8. Describe what is meant by ‘namespacing’ and why it might be useful.\\\n",
    "- namespacing is the organisation of functions with the same name, it avoids confusion of different functions with the same name\n",
    "9. What is the pipe operator, and why is it popular in R?\\\n",
    "- pipe operator in R puts the result of an operation and use it as an input in an operation next to it, it is popular because it makes the code blocks more readable \n",
    "10. What is the difference between an error and a warning in R?\\\n",
    "- error indicates the mistakes in the code while warning is just to inform\n",
    "11. Name some simple plotting functions in base R.\n",
    "- plotly\n",
    "- boxplot\n",
    "12. Name some common specialist plotting and graphing packages in R.\n",
    "- ggplot\n",
    "- GGally\n",
    "13. What is R Markdown, and why is it useful to someone performing analysis using programming languages?\n",
    "- R markdown is the documentation of a coding process making it reproducable by the reader and provides explanation of certain utisalitions "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0fe163c1",
   "metadata": {
    "papermill": {
     "duration": 0.029411,
     "end_time": "2023-05-19T14:28:52.159109",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.129698",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Statistics Foundation \n",
    "Particularly important 3 topics in this book \n",
    "1. Descriptive statistics of populations and samples \n",
    "2. Distribution of random variables \n",
    "3. Hypothesis testing \n",
    "\n",
    "The dataset used in this chapter is still the `salespeople` dataset loaded earlier in this notebook "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 48,
   "id": "124bf889",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:52.216492Z",
     "iopub.status.busy": "2023-05-19T14:28:52.215001Z",
     "iopub.status.idle": "2023-05-19T14:28:52.504343Z",
     "shell.execute_reply": "2023-05-19T14:28:52.502878Z"
    },
    "papermill": {
     "duration": 0.319904,
     "end_time": "2023-05-19T14:28:52.506326",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.186422",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# assign the link to the variable 'url'\n",
    "url <- \"http://peopleanalytics-regression-book.org/data/salespeople.csv\"\n",
    "\n",
    "# read the url using read.csv() function and assign it to the variable salespeople\n",
    "salespeople <- read.csv(url)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 49,
   "id": "51611bfa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:52.563725Z",
     "iopub.status.busy": "2023-05-19T14:28:52.562351Z",
     "iopub.status.idle": "2023-05-19T14:28:52.579618Z",
     "shell.execute_reply": "2023-05-19T14:28:52.578060Z"
    },
    "papermill": {
     "duration": 0.049096,
     "end_time": "2023-05-19T14:28:52.581810",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.532714",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t351 obs. of  4 variables:\n",
      " $ promoted     : int  0 0 1 0 1 1 0 0 0 0 ...\n",
      " $ sales        : int  594 446 674 525 657 918 318 364 342 387 ...\n",
      " $ customer_rate: num  3.94 4.06 3.83 3.62 4.4 4.54 3.09 4.89 3.74 3 ...\n",
      " $ performance  : int  2 3 4 2 3 2 3 1 3 3 ...\n"
     ]
    }
   ],
   "source": [
    "# let's see the structure of the data set using str() function \n",
    "str(salespeople)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 50,
   "id": "66ed2597",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:52.641649Z",
     "iopub.status.busy": "2023-05-19T14:28:52.639592Z",
     "iopub.status.idle": "2023-05-19T14:28:52.655623Z",
     "shell.execute_reply": "2023-05-19T14:28:52.654169Z"
    },
    "papermill": {
     "duration": 0.049188,
     "end_time": "2023-05-19T14:28:52.657411",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.608223",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>0</li><li>1</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 0\n",
       "\\item 1\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 0\n",
       "2. 1\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 0 1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# It looks like `promoted` is binary, containing only 0 and 1 value\n",
    "# display the unique values in promoted using unique() function \n",
    "unique(salespeople$promoted)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fca38cee",
   "metadata": {
    "papermill": {
     "duration": 0.027583,
     "end_time": "2023-05-19T14:28:52.711777",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.684194",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Which proves our hypothesis that promoted contains only two values 0 and 1\n",
    "\n",
    "Performance values seem like categorical, let's display the unique values"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 51,
   "id": "ee084690",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:52.768748Z",
     "iopub.status.busy": "2023-05-19T14:28:52.767318Z",
     "iopub.status.idle": "2023-05-19T14:28:52.782055Z",
     "shell.execute_reply": "2023-05-19T14:28:52.780659Z"
    },
    "papermill": {
     "duration": 0.045796,
     "end_time": "2023-05-19T14:28:52.784618",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.738822",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>2</li><li>3</li><li>4</li><li>1</li><li>&lt;NA&gt;</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 2\n",
       "\\item 3\n",
       "\\item 4\n",
       "\\item 1\n",
       "\\item <NA>\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 2\n",
       "2. 3\n",
       "3. 4\n",
       "4. 1\n",
       "5. &lt;NA&gt;\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1]  2  3  4  1 NA"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "unique(salespeople$performance)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "87d49b6e",
   "metadata": {
    "papermill": {
     "duration": 0.026131,
     "end_time": "2023-05-19T14:28:52.837507",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.811376",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We can confirm that it is categorical "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "724e26d2",
   "metadata": {
    "papermill": {
     "duration": 0.02611,
     "end_time": "2023-05-19T14:28:52.889875",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.863765",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 3.1 Elementary descriptive statistics of populations and samples \n",
    "### 3.1.1 Mean, variance and standard deviation \n",
    "\n",
    "While the mean value of a sample is represented by x, and mean value of the entire dataset is denoted using &mu;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 52,
   "id": "543f8f44",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:52.946877Z",
     "iopub.status.busy": "2023-05-19T14:28:52.945480Z",
     "iopub.status.idle": "2023-05-19T14:28:52.961230Z",
     "shell.execute_reply": "2023-05-19T14:28:52.959643Z"
    },
    "papermill": {
     "duration": 0.047514,
     "end_time": "2023-05-19T14:28:52.963150",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.915636",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "527.005714285714"
      ],
      "text/latex": [
       "527.005714285714"
      ],
      "text/markdown": [
       "527.005714285714"
      ],
      "text/plain": [
       "[1] 527.0057"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# display the mean value of different columns in salespeople dataset \n",
    "# display mean value of the column sales \n",
    "mean(salespeople$sales, na.rm = TRUE) # na.rm indicates that the NA values are to be ignored "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 53,
   "id": "84724cd2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:53.021459Z",
     "iopub.status.busy": "2023-05-19T14:28:53.019916Z",
     "iopub.status.idle": "2023-05-19T14:28:53.036210Z",
     "shell.execute_reply": "2023-05-19T14:28:53.034655Z"
    },
    "papermill": {
     "duration": 0.048131,
     "end_time": "2023-05-19T14:28:53.038879",
     "exception": false,
     "start_time": "2023-05-19T14:28:52.990748",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.321937321937322"
      ],
      "text/latex": [
       "0.321937321937322"
      ],
      "text/markdown": [
       "0.321937321937322"
      ],
      "text/plain": [
       "[1] 0.3219373"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# \n",
    "mean(salespeople$promoted, na.rm = TRUE)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5ddfc4ec",
   "metadata": {
    "papermill": {
     "duration": 0.026582,
     "end_time": "2023-05-19T14:28:53.092652",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.066070",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Since the output of promoted column can be only 1 or 0, meaning being promoted or not, we can interpret this result of 0.3 as the percentage of one being promoted, if it is random, then the result should have been 0.5, since it's lower than 0.5, we would infer that most people are not promoted "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 54,
   "id": "368bc0de",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:53.149949Z",
     "iopub.status.busy": "2023-05-19T14:28:53.148441Z",
     "iopub.status.idle": "2023-05-19T14:28:53.165606Z",
     "shell.execute_reply": "2023-05-19T14:28:53.163527Z"
    },
    "papermill": {
     "duration": 0.048644,
     "end_time": "2023-05-19T14:28:53.168056",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.119412",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2.5"
      ],
      "text/latex": [
       "2.5"
      ],
      "text/markdown": [
       "2.5"
      ],
      "text/plain": [
       "[1] 2.5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mean(salespeople$performance, na.rm = TRUE)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "26cbe007",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-16T14:36:36.279689Z",
     "iopub.status.busy": "2023-05-16T14:36:36.247899Z",
     "iopub.status.idle": "2023-05-16T14:36:36.333720Z"
    },
    "papermill": {
     "duration": 0.026872,
     "end_time": "2023-05-19T14:28:53.223362",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.196490",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Since the performance rating can only range from 1 to 4, we can infer that the overall rating of performance is above 0.5 * 4 = 2 level "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8c7a8a4a",
   "metadata": {
    "papermill": {
     "duration": 0.027372,
     "end_time": "2023-05-19T14:28:53.277618",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.250246",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The variance is a measure of how much data varies around its mean.\\\n",
    "There are two types of definitions of variance : \n",
    "1. The population variance : average squared difference from the mean \n",
    "2. Sample variance : Bessel's correction is applied to take into account potential sample error\\\n",
    "In R, by default, sample variance is calculated "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 55,
   "id": "91b3382b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:53.335173Z",
     "iopub.status.busy": "2023-05-19T14:28:53.333622Z",
     "iopub.status.idle": "2023-05-19T14:28:53.350207Z",
     "shell.execute_reply": "2023-05-19T14:28:53.348798Z"
    },
    "papermill": {
     "duration": 0.047372,
     "end_time": "2023-05-19T14:28:53.352121",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.304749",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "34308.1145804339"
      ],
      "text/latex": [
       "34308.1145804339"
      ],
      "text/markdown": [
       "34308.1145804339"
      ],
      "text/plain": [
       "[1] 34308.11"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sample_variance_sales <- var(salespeople$sales, na.rm = TRUE)\n",
    "# var() function calculates the sample variance \n",
    "\n",
    "sample_variance_sales"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1986ab46",
   "metadata": {
    "papermill": {
     "duration": 0.027407,
     "end_time": "2023-05-19T14:28:53.407230",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.379823",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "population_variance = n -1 / n * sample_variance"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 56,
   "id": "3e0004d4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:53.464886Z",
     "iopub.status.busy": "2023-05-19T14:28:53.463547Z",
     "iopub.status.idle": "2023-05-19T14:28:53.482384Z",
     "shell.execute_reply": "2023-05-19T14:28:53.480840Z"
    },
    "papermill": {
     "duration": 0.050639,
     "end_time": "2023-05-19T14:28:53.484848",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.434209",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "34210.0913959184"
      ],
      "text/latex": [
       "34210.0913959184"
      ],
      "text/markdown": [
       "34210.0913959184"
      ],
      "text/plain": [
       "[1] 34210.09"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# thus, to get population variance, we need to make a small transformation \n",
    "\n",
    "n <- length(na.omit(salespeople$sales))\n",
    "# na.omit() function removes the rows with missing values \n",
    "\n",
    "population_variance_sales <- sample_variance_sales * (n - 1) / n\n",
    "\n",
    "population_variance_sales"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 57,
   "id": "31981269",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:53.545954Z",
     "iopub.status.busy": "2023-05-19T14:28:53.544503Z",
     "iopub.status.idle": "2023-05-19T14:28:53.554818Z",
     "shell.execute_reply": "2023-05-19T14:28:53.553421Z"
    },
    "papermill": {
     "duration": 0.0432,
     "end_time": "2023-05-19T14:28:53.556957",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.513757",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# help(na.omit)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "608680f1",
   "metadata": {
    "papermill": {
     "duration": 0.02922,
     "end_time": "2023-05-19T14:28:53.614435",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.585215",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Standard deviation ^ 2 = variance\\\n",
    "Same as variance, deviation also has two versions: sample and population deviation \n",
    "population deviation = square-rooted (n-1) / 1 * sample deviation \n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 58,
   "id": "e5f7534f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:53.674864Z",
     "iopub.status.busy": "2023-05-19T14:28:53.673261Z",
     "iopub.status.idle": "2023-05-19T14:28:53.690620Z",
     "shell.execute_reply": "2023-05-19T14:28:53.689177Z"
    },
    "papermill": {
     "duration": 0.049943,
     "end_time": "2023-05-19T14:28:53.692496",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.642553",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "185.224497786966"
      ],
      "text/latex": [
       "185.224497786966"
      ],
      "text/markdown": [
       "185.224497786966"
      ],
      "text/plain": [
       "[1] 185.2245"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# sample standard deviation \n",
    "\n",
    "sample_sd_sales <- sd(salespeople$sales, na.rm = TRUE)\n",
    "# sd() is standard deviation function\n",
    "# na.rm = TRUE means removing the missing values before proceeding the computation\n",
    "\n",
    "sample_sd_sales"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 59,
   "id": "d0bd3d26",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:53.755395Z",
     "iopub.status.busy": "2023-05-19T14:28:53.753750Z",
     "iopub.status.idle": "2023-05-19T14:28:53.764277Z",
     "shell.execute_reply": "2023-05-19T14:28:53.762807Z"
    },
    "papermill": {
     "duration": 0.042737,
     "end_time": "2023-05-19T14:28:53.766109",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.723372",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# help(sd)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 60,
   "id": "154d83b3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:53.824124Z",
     "iopub.status.busy": "2023-05-19T14:28:53.822616Z",
     "iopub.status.idle": "2023-05-19T14:28:53.843210Z",
     "shell.execute_reply": "2023-05-19T14:28:53.841834Z"
    },
    "papermill": {
     "duration": 0.051939,
     "end_time": "2023-05-19T14:28:53.845164",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.793225",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# verify the sample variance sales is the squared of sample standard deviation sales \n",
    "sample_variance_sales == sample_sd_sales ** 2\n",
    "\n",
    "# or we can use another method to verify\n",
    "sqrt(sample_variance_sales) == sample_sd_sales\n",
    "\n",
    "# in both cases, we would expect to have TRUE"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 61,
   "id": "5306efd0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:53.903656Z",
     "iopub.status.busy": "2023-05-19T14:28:53.902139Z",
     "iopub.status.idle": "2023-05-19T14:28:53.920125Z",
     "shell.execute_reply": "2023-05-19T14:28:53.918461Z"
    },
    "papermill": {
     "duration": 0.057343,
     "end_time": "2023-05-19T14:28:53.929873",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.872530",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "184.959702086477"
      ],
      "text/latex": [
       "184.959702086477"
      ],
      "text/markdown": [
       "184.959702086477"
      ],
      "text/plain": [
       "[1] 184.9597"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# finally, we are calculating the population standard deviation \n",
    "population_sd_sales <- sample_sd_sales * sqrt((n - 1) / n)\n",
    "\n",
    "population_sd_sales"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "78bf1746",
   "metadata": {
    "papermill": {
     "duration": 0.028842,
     "end_time": "2023-05-19T14:28:53.987306",
     "exception": false,
     "start_time": "2023-05-19T14:28:53.958464",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 3.1.2 Covariance and Correlation \n",
    "The **covariance** measers how one changes as the other changes between two variables.\\\n",
    "Like **variance**, **covariance** has also two versions: **samples covariance** and **population covariance**.\\\n",
    "As variance and deviation, in R, we get **sample covariance** by default, so we need to transform it to get the **population covariance**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 62,
   "id": "4ad0139f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:54.049015Z",
     "iopub.status.busy": "2023-05-19T14:28:54.047564Z",
     "iopub.status.idle": "2023-05-19T14:28:54.064253Z",
     "shell.execute_reply": "2023-05-19T14:28:54.062864Z"
    },
    "papermill": {
     "duration": 0.049722,
     "end_time": "2023-05-19T14:28:54.066030",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.016308",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "55.8176911993451"
      ],
      "text/latex": [
       "55.8176911993451"
      ],
      "text/markdown": [
       "55.8176911993451"
      ],
      "text/plain": [
       "[1] 55.81769"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# get the sample covariance between sales and customer_rate \n",
    "# ignore observations with missing data \n",
    "sample_cov <- cov(salespeople$sales, salespeople$customer_rate, use = \"complete.obs\")\n",
    "# use: an optional character string giving a method for computing covariance in the presence of missing values \n",
    "# use = \"complete.obs\": missing values are handled by casewise deletion, excluding the observations with with missing values for any of the variable invovled  \n",
    "# obs : observations \n",
    "# cases = rows = observations = instances\n",
    "\n",
    "sample_cov"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 63,
   "id": "d29f327c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:54.125026Z",
     "iopub.status.busy": "2023-05-19T14:28:54.123626Z",
     "iopub.status.idle": "2023-05-19T14:28:54.143944Z",
     "shell.execute_reply": "2023-05-19T14:28:54.142529Z"
    },
    "papermill": {
     "duration": 0.052538,
     "end_time": "2023-05-19T14:28:54.146450",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.093912",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "55.6582120816326"
      ],
      "text/latex": [
       "55.6582120816326"
      ],
      "text/markdown": [
       "55.6582120816326"
      ],
      "text/plain": [
       "[1] 55.65821"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# to convert samples covariance to population covariance \n",
    "cols <- subset(salespeople, select = c(\"sales\",\"customer_rate\"))\n",
    "# subset : create a subset of a dataset \n",
    "\n",
    "n <- nrow(cols[complete.cases(cols),])\n",
    "# complete.cases() function identifies the complete cases in a dataset\n",
    "# cols[complete.cases(cols),]: access all the rows with complete cases \n",
    "\n",
    "population_cov <- sample_cov * (n - 1) / n \n",
    "population_cov"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a61d8ead",
   "metadata": {
    "papermill": {
     "duration": 0.028269,
     "end_time": "2023-05-19T14:28:54.203574",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.175305",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### **Pearson's correlation**\n",
    "**Pearson's correlation** devides the **covariance** by the product of of the **standard deviationos** of the two variables.\\\n",
    "This creates a scale of -1 to 1, which gives an intuitive way of the direction and the strength of the relationship between x and y.\\\n",
    "-1 meaning x increases perfectly as y decreases and 1 vice versal.\\\n",
    "0 meaning there is no relationship between the two variables.\\\n",
    "As, **variance**, **covariance** and **standard deviation**, there are also sample and population versions of the correlation.\\\n",
    "**sample correlation** and **population correlation** \n",
    "As before, R calculates by default the sample correlation.\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 64,
   "id": "eb88a619",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:54.265761Z",
     "iopub.status.busy": "2023-05-19T14:28:54.264320Z",
     "iopub.status.idle": "2023-05-19T14:28:54.279338Z",
     "shell.execute_reply": "2023-05-19T14:28:54.277914Z"
    },
    "papermill": {
     "duration": 0.048186,
     "end_time": "2023-05-19T14:28:54.281560",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.233374",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.337805044858678"
      ],
      "text/latex": [
       "0.337805044858678"
      ],
      "text/markdown": [
       "0.337805044858678"
      ],
      "text/plain": [
       "[1] 0.337805"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cor(salespeople$sales, salespeople$customer_rate, use = \"complete.obs\")\n",
    "# correlation between sales and customer_Rate\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a8c4705c",
   "metadata": {
    "papermill": {
     "duration": 0.028618,
     "end_time": "2023-05-19T14:28:54.338568",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.309950",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Point-biserial correlation \n",
    "The correlation between a contineous scale variable and a binary scale variable "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 65,
   "id": "0f8fdf8c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:54.399136Z",
     "iopub.status.busy": "2023-05-19T14:28:54.397717Z",
     "iopub.status.idle": "2023-05-19T14:28:54.413828Z",
     "shell.execute_reply": "2023-05-19T14:28:54.412395Z"
    },
    "papermill": {
     "duration": 0.049275,
     "end_time": "2023-05-19T14:28:54.416673",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.367398",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.851128310529767"
      ],
      "text/latex": [
       "0.851128310529767"
      ],
      "text/markdown": [
       "0.851128310529767"
      ],
      "text/plain": [
       "[1] 0.8511283"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cor(salespeople$sales, salespeople$promoted, use = \"complete.obs\")\n",
    "# correlation between sales and promotion, rather positive correlation is observed "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8296f038",
   "metadata": {
    "papermill": {
     "duration": 0.02926,
     "end_time": "2023-05-19T14:28:54.474529",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.445269",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Correlation ranked variables \n",
    "Two approches : **Spearman's rho** & **Kendall's tau** "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 66,
   "id": "9c93745b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:54.536667Z",
     "iopub.status.busy": "2023-05-19T14:28:54.535282Z",
     "iopub.status.idle": "2023-05-19T14:28:54.551430Z",
     "shell.execute_reply": "2023-05-19T14:28:54.550033Z"
    },
    "papermill": {
     "duration": 0.049096,
     "end_time": "2023-05-19T14:28:54.553857",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.504761",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.273544598474525"
      ],
      "text/latex": [
       "0.273544598474525"
      ],
      "text/markdown": [
       "0.273544598474525"
      ],
      "text/plain": [
       "[1] 0.2735446"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# spearman's rho correlation \n",
    "cor(salespeople$sales, salespeople$performance, method = \"spearman\", use = \"complete.obs\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 67,
   "id": "3f54d1e3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:54.614448Z",
     "iopub.status.busy": "2023-05-19T14:28:54.613079Z",
     "iopub.status.idle": "2023-05-19T14:28:54.631608Z",
     "shell.execute_reply": "2023-05-19T14:28:54.630173Z"
    },
    "papermill": {
     "duration": 0.051482,
     "end_time": "2023-05-19T14:28:54.633916",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.582434",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.20736088105812"
      ],
      "text/latex": [
       "0.20736088105812"
      ],
      "text/markdown": [
       "0.20736088105812"
      ],
      "text/plain": [
       "[1] 0.2073609"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# kendall's tau correlation \n",
    "cor(salespeople$sales, salespeople$performance, method = \"kendall\", use = \"complete.obs\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "79a068bb",
   "metadata": {
    "papermill": {
     "duration": 0.030335,
     "end_time": "2023-05-19T14:28:54.693359",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.663024",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Distribution of random variables \n",
    "### Sampling of random variables \n",
    "When we describe variables as random, we are assuming that they are ***independent*** and ***identically distributed***.\\\n",
    "The value of one variables is not influenced by the other.\\"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3dd9e4ca",
   "metadata": {
    "papermill": {
     "duration": 0.029799,
     "end_time": "2023-05-19T14:28:54.754370",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.724571",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 3.2.2 Standard errors, the t-distribution and confidence intervals\n",
    "**Standard error**: standard deviation of the sampled statistic\n",
    "- Standard error for the mean: SE (Standard Error) = standard deviation / square-rooted n (sample size) \n",
    "\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 68,
   "id": "aa70c17b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:54.821722Z",
     "iopub.status.busy": "2023-05-19T14:28:54.820225Z",
     "iopub.status.idle": "2023-05-19T14:28:54.852093Z",
     "shell.execute_reply": "2023-05-19T14:28:54.850595Z"
    },
    "papermill": {
     "duration": 0.065782,
     "end_time": "2023-05-19T14:28:54.854340",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.788558",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.6485"
      ],
      "text/latex": [
       "3.6485"
      ],
      "text/markdown": [
       "3.6485"
      ],
      "text/plain": [
       "[1] 3.6485"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "0.0849432817302882"
      ],
      "text/latex": [
       "0.0849432817302882"
      ],
      "text/markdown": [
       "0.0849432817302882"
      ],
      "text/plain": [
       "[1] 0.08494328"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# random sample of 100 values in salespeople$customer_rate \n",
    "\n",
    "set.seed(123)\n",
    "# random data is generated based on a starting point called seed \n",
    "# by setting the seed, starting point, we guarantee the same sequence (list) of random numbers is generated \n",
    "\n",
    "custrate <- na.omit(salespeople$customer_rate)\n",
    "# na.omit() function removes any rows containing missing values \n",
    "\n",
    "n <- 100 \n",
    "# set the sample number to 100 \n",
    "\n",
    "sample_custrate <- sample(custrate, n)\n",
    "# sample() function randomply samples elements \n",
    "\n",
    "#calculate the sample mean\n",
    "sample_mean <- mean(sample_custrate)\n",
    "sample_mean\n",
    "\n",
    "# calculate the standard error of the sample \n",
    "se <- sd(sample_custrate) / sqrt(n)\n",
    "se\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "380c7e01",
   "metadata": {
    "papermill": {
     "duration": 0.028497,
     "end_time": "2023-05-19T14:28:54.911602",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.883105",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Normal distribution is frequency or probablity distribution\\\n",
    "**t-distribution** or **student's distribution** is used when the sample size is small, and population standard deviation is unknown.\\\n",
    "Significance level of 5% = Confidence level of 95%.\\\n",
    "**Degree of Freedom (df)** refers to the number of independent variable for testing statistical parameters"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 69,
   "id": "cf185f84",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:28:54.976361Z",
     "iopub.status.busy": "2023-05-19T14:28:54.974694Z",
     "iopub.status.idle": "2023-05-19T14:29:07.443658Z",
     "shell.execute_reply": "2023-05-19T14:29:07.442142Z"
    },
    "papermill": {
     "duration": 12.505686,
     "end_time": "2023-05-19T14:29:07.446292",
     "exception": false,
     "start_time": "2023-05-19T14:28:54.940606",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# isntall r-makrdown package \n",
    "install.packages(\"rmarkdown\")\n",
    "\n",
    "# then load r-markdown package so it can be accessed \n",
    "library(rmarkdown)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 70,
   "id": "8152940b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:29:07.547113Z",
     "iopub.status.busy": "2023-05-19T14:29:07.545408Z",
     "iopub.status.idle": "2023-05-19T14:29:15.668572Z",
     "shell.execute_reply": "2023-05-19T14:29:15.667125Z"
    },
    "papermill": {
     "duration": 8.195581,
     "end_time": "2023-05-19T14:29:15.671366",
     "exception": false,
     "start_time": "2023-05-19T14:29:07.475785",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# install tinytex package to export the r-markdown document to pdf or html\n",
    "install.packages(\"tinytex\")\n",
    "\n",
    "# load the tinytex package\n",
    "library(tinytex)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 71,
   "id": "ae28abb3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-19T14:29:15.731817Z",
     "iopub.status.busy": "2023-05-19T14:29:15.730522Z",
     "iopub.status.idle": "2023-05-19T14:29:15.902443Z",
     "shell.execute_reply": "2023-05-19T14:29:15.899996Z"
    },
    "papermill": {
     "duration": 0.204345,
     "end_time": "2023-05-19T14:29:15.904270",
     "exception": false,
     "start_time": "2023-05-19T14:29:15.699925",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# The Student t Distribution \n",
    "# parameters (p = vector of probabilities, )\n",
    "help(qt)\n",
    "\n",
    "# get standard error multiple "
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 191.269004,
   "end_time": "2023-05-19T14:29:16.054573",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-05-19T14:26:04.785569",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
