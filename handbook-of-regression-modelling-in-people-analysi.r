{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "31725936",
   "metadata": {
    "_cell_guid": "d0e76f9d-6b41-40fb-a33f-8e418ad8e4e9",
    "_execution_state": "idle",
    "_uuid": "16d8c1ab-3bb6-4414-a431-299967117a2f",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:00.832633Z",
     "iopub.status.busy": "2023-05-23T13:13:00.830620Z",
     "iopub.status.idle": "2023-05-23T13:13:00.967320Z",
     "shell.execute_reply": "2023-05-23T13:13:00.965087Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.171674,
     "end_time": "2023-05-23T13:13:00.974308",
     "exception": false,
     "start_time": "2023-05-23T13:13:00.802634",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
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
    "# library(tidyverse) # metapackage of all tidyverse packages\n",
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
   "id": "c824a606",
   "metadata": {
    "_cell_guid": "726a274d-f8e4-4f31-acf2-a277ebe95721",
    "_uuid": "64e13804-2adc-4b85-94dc-6ec572a5be3d",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:01.055134Z",
     "iopub.status.busy": "2023-05-23T13:13:01.024796Z",
     "iopub.status.idle": "2023-05-23T13:13:01.067463Z",
     "shell.execute_reply": "2023-05-23T13:13:01.065672Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.071464,
     "end_time": "2023-05-23T13:13:01.069708",
     "exception": false,
     "start_time": "2023-05-23T13:13:00.998244",
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
   "id": "0f9a10fa",
   "metadata": {
    "papermill": {
     "duration": 0.023268,
     "end_time": "2023-05-23T13:13:01.116848",
     "exception": false,
     "start_time": "2023-05-23T13:13:01.093580",
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
   "id": "85223fd1",
   "metadata": {
    "_cell_guid": "1cd097f6-fae7-4905-bd6e-45a36b087fc2",
    "_uuid": "2530b1f2-821e-4cbf-931d-fbadb63b0465",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:01.167800Z",
     "iopub.status.busy": "2023-05-23T13:13:01.165956Z",
     "iopub.status.idle": "2023-05-23T13:13:01.679450Z",
     "shell.execute_reply": "2023-05-23T13:13:01.676158Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.541546,
     "end_time": "2023-05-23T13:13:01.681991",
     "exception": false,
     "start_time": "2023-05-23T13:13:01.140445",
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
   "id": "82bde168",
   "metadata": {
    "_cell_guid": "446a270b-9626-4ead-a3e0-4a272573d81b",
    "_uuid": "4d128ac2-5fd5-456b-bc5a-b8b137cfc0fd",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:01.732723Z",
     "iopub.status.busy": "2023-05-23T13:13:01.731074Z",
     "iopub.status.idle": "2023-05-23T13:13:01.762575Z",
     "shell.execute_reply": "2023-05-23T13:13:01.760223Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.059769,
     "end_time": "2023-05-23T13:13:01.765356",
     "exception": false,
     "start_time": "2023-05-23T13:13:01.705587",
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
   "id": "90d312b2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:01.815852Z",
     "iopub.status.busy": "2023-05-23T13:13:01.814305Z",
     "iopub.status.idle": "2023-05-23T13:13:01.832866Z",
     "shell.execute_reply": "2023-05-23T13:13:01.830794Z"
    },
    "papermill": {
     "duration": 0.046846,
     "end_time": "2023-05-23T13:13:01.835826",
     "exception": false,
     "start_time": "2023-05-23T13:13:01.788980",
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
   "id": "758701df",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:01.891158Z",
     "iopub.status.busy": "2023-05-23T13:13:01.885195Z",
     "iopub.status.idle": "2023-05-23T13:13:01.906950Z",
     "shell.execute_reply": "2023-05-23T13:13:01.905221Z"
    },
    "papermill": {
     "duration": 0.049699,
     "end_time": "2023-05-23T13:13:01.909146",
     "exception": false,
     "start_time": "2023-05-23T13:13:01.859447",
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
   "id": "6c0c6e1c",
   "metadata": {
    "papermill": {
     "duration": 0.024038,
     "end_time": "2023-05-23T13:13:01.957194",
     "exception": false,
     "start_time": "2023-05-23T13:13:01.933156",
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
   "id": "b37805af",
   "metadata": {
    "_cell_guid": "bb9d8025-4cc3-4cc3-ba16-3f758d341b9c",
    "_uuid": "e2cc5df0-39dd-406a-a065-7867f9eab59c",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:02.008251Z",
     "iopub.status.busy": "2023-05-23T13:13:02.006713Z",
     "iopub.status.idle": "2023-05-23T13:13:02.028178Z",
     "shell.execute_reply": "2023-05-23T13:13:02.026168Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.049578,
     "end_time": "2023-05-23T13:13:02.030501",
     "exception": false,
     "start_time": "2023-05-23T13:13:01.980923",
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
   "id": "8802ed87",
   "metadata": {
    "papermill": {
     "duration": 0.024356,
     "end_time": "2023-05-23T13:13:02.079043",
     "exception": false,
     "start_time": "2023-05-23T13:13:02.054687",
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
   "id": "25f8d31d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:02.167205Z",
     "iopub.status.busy": "2023-05-23T13:13:02.165602Z",
     "iopub.status.idle": "2023-05-23T13:13:02.500735Z",
     "shell.execute_reply": "2023-05-23T13:13:02.497604Z"
    },
    "papermill": {
     "duration": 0.400409,
     "end_time": "2023-05-23T13:13:02.503603",
     "exception": false,
     "start_time": "2023-05-23T13:13:02.103194",
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
   "id": "03fb47aa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:02.556013Z",
     "iopub.status.busy": "2023-05-23T13:13:02.554313Z",
     "iopub.status.idle": "2023-05-23T13:13:02.579482Z",
     "shell.execute_reply": "2023-05-23T13:13:02.577741Z"
    },
    "papermill": {
     "duration": 0.053807,
     "end_time": "2023-05-23T13:13:02.581839",
     "exception": false,
     "start_time": "2023-05-23T13:13:02.528032",
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
   "id": "fdaec296",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:02.635035Z",
     "iopub.status.busy": "2023-05-23T13:13:02.633355Z",
     "iopub.status.idle": "2023-05-23T13:13:02.654189Z",
     "shell.execute_reply": "2023-05-23T13:13:02.652433Z"
    },
    "papermill": {
     "duration": 0.049427,
     "end_time": "2023-05-23T13:13:02.656451",
     "exception": false,
     "start_time": "2023-05-23T13:13:02.607024",
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
   "id": "a2490bf1",
   "metadata": {
    "papermill": {
     "duration": 0.024492,
     "end_time": "2023-05-23T13:13:02.705566",
     "exception": false,
     "start_time": "2023-05-23T13:13:02.681074",
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
   "id": "c6ba3fd0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:02.758371Z",
     "iopub.status.busy": "2023-05-23T13:13:02.756706Z",
     "iopub.status.idle": "2023-05-23T13:13:02.779371Z",
     "shell.execute_reply": "2023-05-23T13:13:02.777525Z"
    },
    "papermill": {
     "duration": 0.051798,
     "end_time": "2023-05-23T13:13:02.781770",
     "exception": false,
     "start_time": "2023-05-23T13:13:02.729972",
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
   "id": "fb04433e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:02.834771Z",
     "iopub.status.busy": "2023-05-23T13:13:02.833148Z",
     "iopub.status.idle": "2023-05-23T13:13:02.852692Z",
     "shell.execute_reply": "2023-05-23T13:13:02.850921Z"
    },
    "papermill": {
     "duration": 0.048439,
     "end_time": "2023-05-23T13:13:02.855046",
     "exception": false,
     "start_time": "2023-05-23T13:13:02.806607",
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
   "id": "31a87d9a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:02.909023Z",
     "iopub.status.busy": "2023-05-23T13:13:02.907369Z",
     "iopub.status.idle": "2023-05-23T13:13:02.924904Z",
     "shell.execute_reply": "2023-05-23T13:13:02.923118Z"
    },
    "papermill": {
     "duration": 0.046936,
     "end_time": "2023-05-23T13:13:02.927285",
     "exception": false,
     "start_time": "2023-05-23T13:13:02.880349",
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
   "id": "6582f5f6",
   "metadata": {
    "papermill": {
     "duration": 0.02502,
     "end_time": "2023-05-23T13:13:02.977362",
     "exception": false,
     "start_time": "2023-05-23T13:13:02.952342",
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
   "id": "9dec3b3c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.036078Z",
     "iopub.status.busy": "2023-05-23T13:13:03.034322Z",
     "iopub.status.idle": "2023-05-23T13:13:03.055586Z",
     "shell.execute_reply": "2023-05-23T13:13:03.053761Z"
    },
    "papermill": {
     "duration": 0.055285,
     "end_time": "2023-05-23T13:13:03.057866",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.002581",
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
   "id": "6398f017",
   "metadata": {
    "papermill": {
     "duration": 0.025097,
     "end_time": "2023-05-23T13:13:03.107925",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.082828",
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
   "id": "745c4cce",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.161475Z",
     "iopub.status.busy": "2023-05-23T13:13:03.159861Z",
     "iopub.status.idle": "2023-05-23T13:13:03.184733Z",
     "shell.execute_reply": "2023-05-23T13:13:03.182979Z"
    },
    "papermill": {
     "duration": 0.152321,
     "end_time": "2023-05-23T13:13:03.285201",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.132880",
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
   "id": "6e0439ae",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.340504Z",
     "iopub.status.busy": "2023-05-23T13:13:03.339010Z",
     "iopub.status.idle": "2023-05-23T13:13:03.367507Z",
     "shell.execute_reply": "2023-05-23T13:13:03.365222Z"
    },
    "papermill": {
     "duration": 0.060029,
     "end_time": "2023-05-23T13:13:03.370494",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.310465",
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
   "id": "70ffe214",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.428076Z",
     "iopub.status.busy": "2023-05-23T13:13:03.426338Z",
     "iopub.status.idle": "2023-05-23T13:13:03.446689Z",
     "shell.execute_reply": "2023-05-23T13:13:03.444377Z"
    },
    "papermill": {
     "duration": 0.052067,
     "end_time": "2023-05-23T13:13:03.449602",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.397535",
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
   "id": "0784a32a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.505258Z",
     "iopub.status.busy": "2023-05-23T13:13:03.503802Z",
     "iopub.status.idle": "2023-05-23T13:13:03.522739Z",
     "shell.execute_reply": "2023-05-23T13:13:03.520447Z"
    },
    "papermill": {
     "duration": 0.049569,
     "end_time": "2023-05-23T13:13:03.525235",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.475666",
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
   "id": "70cf2dac",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.581278Z",
     "iopub.status.busy": "2023-05-23T13:13:03.579759Z",
     "iopub.status.idle": "2023-05-23T13:13:03.611252Z",
     "shell.execute_reply": "2023-05-23T13:13:03.608884Z"
    },
    "papermill": {
     "duration": 0.06276,
     "end_time": "2023-05-23T13:13:03.614463",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.551703",
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
   "id": "4eb0c5b3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.670851Z",
     "iopub.status.busy": "2023-05-23T13:13:03.668867Z",
     "iopub.status.idle": "2023-05-23T13:13:03.703740Z",
     "shell.execute_reply": "2023-05-23T13:13:03.701220Z"
    },
    "papermill": {
     "duration": 0.066761,
     "end_time": "2023-05-23T13:13:03.707020",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.640259",
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
   "id": "50591d5d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.763205Z",
     "iopub.status.busy": "2023-05-23T13:13:03.761270Z",
     "iopub.status.idle": "2023-05-23T13:13:03.797874Z",
     "shell.execute_reply": "2023-05-23T13:13:03.795439Z"
    },
    "papermill": {
     "duration": 0.068627,
     "end_time": "2023-05-23T13:13:03.801483",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.732856",
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
   "id": "a5705556",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.857861Z",
     "iopub.status.busy": "2023-05-23T13:13:03.855856Z",
     "iopub.status.idle": "2023-05-23T13:13:03.899771Z",
     "shell.execute_reply": "2023-05-23T13:13:03.896843Z"
    },
    "papermill": {
     "duration": 0.07541,
     "end_time": "2023-05-23T13:13:03.903039",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.827629",
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
   "id": "2598f4aa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:03.960820Z",
     "iopub.status.busy": "2023-05-23T13:13:03.958590Z",
     "iopub.status.idle": "2023-05-23T13:13:04.010508Z",
     "shell.execute_reply": "2023-05-23T13:13:04.008673Z"
    },
    "papermill": {
     "duration": 0.08392,
     "end_time": "2023-05-23T13:13:04.013520",
     "exception": false,
     "start_time": "2023-05-23T13:13:03.929600",
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
   "id": "bdb43399",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:04.071797Z",
     "iopub.status.busy": "2023-05-23T13:13:04.070235Z",
     "iopub.status.idle": "2023-05-23T13:13:04.322245Z",
     "shell.execute_reply": "2023-05-23T13:13:04.318651Z"
    },
    "papermill": {
     "duration": 0.285069,
     "end_time": "2023-05-23T13:13:04.325963",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.040894",
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
   "id": "685624bb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:04.386322Z",
     "iopub.status.busy": "2023-05-23T13:13:04.384821Z",
     "iopub.status.idle": "2023-05-23T13:13:04.409045Z",
     "shell.execute_reply": "2023-05-23T13:13:04.406858Z"
    },
    "papermill": {
     "duration": 0.057401,
     "end_time": "2023-05-23T13:13:04.412017",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.354616",
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
   "id": "8bb996fe",
   "metadata": {
    "papermill": {
     "duration": 0.02805,
     "end_time": "2023-05-23T13:13:04.468608",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.440558",
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
   "id": "14a8adf5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:04.527282Z",
     "iopub.status.busy": "2023-05-23T13:13:04.525729Z",
     "iopub.status.idle": "2023-05-23T13:13:04.559513Z",
     "shell.execute_reply": "2023-05-23T13:13:04.557642Z"
    },
    "papermill": {
     "duration": 0.065825,
     "end_time": "2023-05-23T13:13:04.562028",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.496203",
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
   "id": "c7857628",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-14T08:19:22.699981Z",
     "iopub.status.busy": "2023-05-14T08:19:22.698288Z",
     "iopub.status.idle": "2023-05-14T08:19:22.715354Z"
    },
    "papermill": {
     "duration": 0.028924,
     "end_time": "2023-05-23T13:13:04.618741",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.589817",
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
   "id": "c4ec23d7",
   "metadata": {
    "papermill": {
     "duration": 0.02782,
     "end_time": "2023-05-23T13:13:04.675556",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.647736",
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
   "id": "d0bb24c8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:04.734251Z",
     "iopub.status.busy": "2023-05-23T13:13:04.732594Z",
     "iopub.status.idle": "2023-05-23T13:13:04.745086Z",
     "shell.execute_reply": "2023-05-23T13:13:04.743273Z"
    },
    "papermill": {
     "duration": 0.044733,
     "end_time": "2023-05-23T13:13:04.747802",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.703069",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# install.packages('MASS')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9c0e2d5e",
   "metadata": {
    "papermill": {
     "duration": 0.028421,
     "end_time": "2023-05-23T13:13:04.804200",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.775779",
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
   "id": "7c0beaee",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:04.864309Z",
     "iopub.status.busy": "2023-05-23T13:13:04.862793Z",
     "iopub.status.idle": "2023-05-23T13:13:04.875965Z",
     "shell.execute_reply": "2023-05-23T13:13:04.874083Z"
    },
    "papermill": {
     "duration": 0.047106,
     "end_time": "2023-05-23T13:13:04.878968",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.831862",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# my_packages <- c('MASS', 'DescTools', 'dplyr')\n",
    "# install.packages(my_packages)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "765b9cc3",
   "metadata": {
    "papermill": {
     "duration": 0.027445,
     "end_time": "2023-05-23T13:13:04.933871",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.906426",
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
   "id": "fe7e66cf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:04.992790Z",
     "iopub.status.busy": "2023-05-23T13:13:04.991131Z",
     "iopub.status.idle": "2023-05-23T13:13:05.004312Z",
     "shell.execute_reply": "2023-05-23T13:13:05.002540Z"
    },
    "papermill": {
     "duration": 0.045683,
     "end_time": "2023-05-23T13:13:05.007196",
     "exception": false,
     "start_time": "2023-05-23T13:13:04.961513",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# help(package = MASS)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "fa431971",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.065950Z",
     "iopub.status.busy": "2023-05-23T13:13:05.064295Z",
     "iopub.status.idle": "2023-05-23T13:13:05.077547Z",
     "shell.execute_reply": "2023-05-23T13:13:05.075740Z"
    },
    "papermill": {
     "duration": 0.045617,
     "end_time": "2023-05-23T13:13:05.080414",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.034797",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# install.packages('peopleanalyticsdata')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a0aa8dd8",
   "metadata": {
    "papermill": {
     "duration": 0.027396,
     "end_time": "2023-05-23T13:13:05.135257",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.107861",
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
   "id": "8aa63fd8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.193792Z",
     "iopub.status.busy": "2023-05-23T13:13:05.192164Z",
     "iopub.status.idle": "2023-05-23T13:13:05.205147Z",
     "shell.execute_reply": "2023-05-23T13:13:05.203568Z"
    },
    "papermill": {
     "duration": 0.045143,
     "end_time": "2023-05-23T13:13:05.207696",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.162553",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# library(MASS)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "b3446ac7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.267462Z",
     "iopub.status.busy": "2023-05-23T13:13:05.265913Z",
     "iopub.status.idle": "2023-05-23T13:13:05.278458Z",
     "shell.execute_reply": "2023-05-23T13:13:05.276752Z"
    },
    "papermill": {
     "duration": 0.044773,
     "end_time": "2023-05-23T13:13:05.280933",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.236160",
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
   "id": "de32787b",
   "metadata": {
    "papermill": {
     "duration": 0.028294,
     "end_time": "2023-05-23T13:13:05.337865",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.309571",
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
   "id": "e32ed7ca",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.397627Z",
     "iopub.status.busy": "2023-05-23T13:13:05.396060Z",
     "iopub.status.idle": "2023-05-23T13:13:05.422482Z",
     "shell.execute_reply": "2023-05-23T13:13:05.420778Z"
    },
    "papermill": {
     "duration": 0.059285,
     "end_time": "2023-05-23T13:13:05.425054",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.365769",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# load the package \n",
    "library(magrittr)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "4e8c310c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.484338Z",
     "iopub.status.busy": "2023-05-23T13:13:05.482824Z",
     "iopub.status.idle": "2023-05-23T13:13:05.499846Z",
     "shell.execute_reply": "2023-05-23T13:13:05.498230Z"
    },
    "papermill": {
     "duration": 0.049119,
     "end_time": "2023-05-23T13:13:05.502134",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.453015",
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
   "id": "2685efcb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.561539Z",
     "iopub.status.busy": "2023-05-23T13:13:05.559906Z",
     "iopub.status.idle": "2023-05-23T13:13:05.576503Z",
     "shell.execute_reply": "2023-05-23T13:13:05.574748Z"
    },
    "papermill": {
     "duration": 0.048926,
     "end_time": "2023-05-23T13:13:05.578853",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.529927",
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
   "id": "0afe4fc5",
   "metadata": {
    "papermill": {
     "duration": 0.027965,
     "end_time": "2023-05-23T13:13:05.634593",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.606628",
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
   "id": "21e2fc7e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.693956Z",
     "iopub.status.busy": "2023-05-23T13:13:05.692483Z",
     "iopub.status.idle": "2023-05-23T13:13:05.703858Z",
     "shell.execute_reply": "2023-05-23T13:13:05.702246Z"
    },
    "papermill": {
     "duration": 0.043523,
     "end_time": "2023-05-23T13:13:05.706253",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.662730",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# library(tidyverse)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "1f223c49",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.765946Z",
     "iopub.status.busy": "2023-05-23T13:13:05.764414Z",
     "iopub.status.idle": "2023-05-23T13:13:05.777049Z",
     "shell.execute_reply": "2023-05-23T13:13:05.775270Z"
    },
    "papermill": {
     "duration": 0.045544,
     "end_time": "2023-05-23T13:13:05.779894",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.734350",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# install.packages('tidyverse')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "4b71f6c8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.839550Z",
     "iopub.status.busy": "2023-05-23T13:13:05.837745Z",
     "iopub.status.idle": "2023-05-23T13:13:05.851640Z",
     "shell.execute_reply": "2023-05-23T13:13:05.849812Z"
    },
    "papermill": {
     "duration": 0.046587,
     "end_time": "2023-05-23T13:13:05.854040",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.807453",
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
   "id": "e0367505",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:05.915116Z",
     "iopub.status.busy": "2023-05-23T13:13:05.913410Z",
     "iopub.status.idle": "2023-05-23T13:13:05.925598Z",
     "shell.execute_reply": "2023-05-23T13:13:05.923810Z"
    },
    "papermill": {
     "duration": 0.045082,
     "end_time": "2023-05-23T13:13:05.928173",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.883091",
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
   "id": "1fe25ec2",
   "metadata": {
    "papermill": {
     "duration": 0.028252,
     "end_time": "2023-05-23T13:13:05.984717",
     "exception": false,
     "start_time": "2023-05-23T13:13:05.956465",
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
   "id": "ac5267ea",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:06.044507Z",
     "iopub.status.busy": "2023-05-23T13:13:06.042900Z",
     "iopub.status.idle": "2023-05-23T13:13:06.175948Z",
     "shell.execute_reply": "2023-05-23T13:13:06.173452Z"
    },
    "papermill": {
     "duration": 0.165547,
     "end_time": "2023-05-23T13:13:06.178448",
     "exception": false,
     "start_time": "2023-05-23T13:13:06.012901",
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
   "id": "71a836d2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:06.239041Z",
     "iopub.status.busy": "2023-05-23T13:13:06.237527Z",
     "iopub.status.idle": "2023-05-23T13:13:06.539443Z",
     "shell.execute_reply": "2023-05-23T13:13:06.536869Z"
    },
    "papermill": {
     "duration": 0.336478,
     "end_time": "2023-05-23T13:13:06.543733",
     "exception": false,
     "start_time": "2023-05-23T13:13:06.207255",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdZ0ATSRsA4EkloYReBZQiKDZEUZoogmCvoGfvfCoedrGXs2E5PftZzwZ29Ap6\neuiJgI0mNhABUXrvNSH7/Rhdc0nAIJBAfJ9fMLuZeTfJJm92p1AIgkAAAAAAAKDto8o6AAAA\nAAAA0DwgsQMAAAAAkBOQ2AEAAAAAyAlI7AAAAAAA5AQkdgAAAAAAcgISOwAAAAAAOQGJHQAA\nAACAnIDEDgAAAABATkBiBwAAAAAgJyCxAwAAAACQE5DYAQAAAADICUjsAAAAAADkBCR2AAAA\nAAByAhI7AAAAAAA5AYkdAAAAAICcgMQOAAAAAEBOQGIHAAAAACAnILEDAAAAAJATkNgBAAAA\nAMgJSOwAAAAAAOQEJHYAAAAAAHICEjsAAAAAADkBiR0AAAAAgJyAxA4AAAAAQE5AYgcAAAAA\nICcgsQMAAAAAkBOQ2AEAAAAAyAlI7AAAAAAA5AQkdgAAAAAAcgISOwAAAAAAOQGJHQAAAACA\nnIDEDgAAAABATkBiBwAAAAAgJyCxAwAAAACQE5DYAQAAAADICUjsAAAAAADkBCR2AAAAAABy\nAhI7AAAAAAA5AYkdAAAAAICcgMQOAPmU83Q45bPUmjpZhwPAF/DmBKDlQGIHAADfwrFnj27d\nunXr1m3q1feyjqX1gmcJACmjyzoAAABok+JfvSri8RFCnMIaWcfSesGzBICUQWIHAABAqnR6\nX8zPr8V/qyvQZBsMAHIGEjsAAGicvCdhLypqucSnf0sSHt+7l6HZq5+1GrOJNRN1fApNTnrI\nNPAsUWgqmpoyDQ4A+SUnnyAAyAUi4tKBiUOc2+tqsBgMFXWtrn1cfDcfTirn/mcnfuWNIz+N\nGNCnnZaaAp2hqKJm3q3vtEWbn6ZXSNhMXlzw4hmjLdvrKymw9NpbOg+edOLPSHE92CWKR0jc\n1t64UzyVSg0t+c/dtxsDDfEmplKnCj7xzU0Iqi1+u2/VvH49zDU5ikxFjlGn3lMWbY/KriJ3\n+HeMKW5USdtL8IGVOafI/vvrPpQ26qgjZo91c3Mrr+Pjf1//MsvNzW11XP6XKniFV/evHzXA\nxkBbjclkaxsY9x8xZd/lMB6BBD1b0g0HwFZ3q85/Om+IrbICg0pnG5h0m7XqYAGPjxB6fm33\ncEcrTRUWS1m9u+OwX67FCT0Dkryar/fb4YZoDA2EUM6jQE+n7hps5od6Bi58dX9J3oQNPEui\ngyeEWnxyfttgW0sNFRZbRb2b45DdF5+JBsnnZh/f4OPat4sKW9XSdtjx8JyKrMNktdlcvthD\nA0D+EQCA1oBfs3m0pdiTlMnpdOFVId6rrjZrdi9tsbvRFAyOvy4k68t+Mozc9L6aR5bf3zud\nQaGIPtx44IK0Gl5j4xFVVXiL8rn+gYFJAlt43ZQYuNzU83ZTmiDlPDrWUZEh+nA6y2jvw+xP\nxzvaBBcqankKPrYi+yS5/9rUkkYd9Q0rLdEdBj/IwFvLPvztaqQstpJ2zvMSK7lkDE8Xd8Xl\nDEVLF11FoZ117fzubh0uWsnUU28b+2q++qUvLqfS1fNjDqjTP/2kF3xjCGp4fwnfhA08S6Jv\nTsEWQza4ij5w5J5IwQi5Fa9HWagK7kBlaGw6v5r8N6u27qvvHwDkEiR2ALQKib99+apTbd/d\nzcPdoXdn2ufvbJbGwMo6PkEQj5dZk7uxtE162fbubPblK5bTYQlZodjELv2uH5l1qXeyGzfx\nBzeHzuRuBv1/amw8Yi0z5uDdNK1+IQvLMw+RFW5KKm5iEwRB1JREdGR/yuooFIpx5x49OpnS\nPz+czjaNK68lGpnYNSokMt1x+DWeLORVJbtosclK6GzNrt07KgrcXdV1WE1mHGRi9/koqCps\nMd1jqAxlJvVL9sZU7sHlN+7VFEibOOP1lch9JEjsxOwv+ZuwvmepgcSOQqHiJ5yuqEITyFlp\nTN0PX6Ll+9npfnl+6CpqTOGOepDYge8WJHYAtAo7zdTwF5JG5y3cz8lD1uOfyS8qv/fFBEEM\nUGPhf028jtV83i1il+3nL0VG9edCcYkdb7TWp8tCZj8cq/2854vL87+08iK/UfGI9e686+dv\nXNXMmk/fry92fgpSQdWR1+QmCIK4O8PiUysMjdOPMz89/NlJ1c+ZRJ9dL4hGJnaNCklsyvJk\n9ZekZ8Sqs5V1BEEQvMr07eMtyHLfx5+uJgomdpbTdn4sqSGIumeXlpKFFApt1ZnwqjqCV53t\nP9yYLA8urGrUq0mmTQghCoXqMGb2tt379u3ZUcQVnzo3vL/kb8L6nqUGEjuEkHbvGf+8zqwj\niNrSDz+N/HLUC5OKPr0i4T+ShfbzjxfU1PF5pX/tnCKYCEJiB75bkNgB0Cr82E4FfyEpcGz9\nj11+8f7TV/K9O3f+/vvvv//+O7qkhiD4Z8+ePXPmzJkzZ/4trP70SH5NgE9n0e8z0e/O8qxf\nyZIb+VWCrY/S/HSRyWTM3cbEIx634iWb9ukrdkZkDi5c1/7TjTOrBRFNb4IgiN4qn0YqGA+5\nJlh+Y0wvQ0NDQ0PDrv0DiUYmdo0KSWzK4qb+KenRst4u2FwdN7/X54AN+n0KmEzsKFRWVs2X\nRMTq8/1ljc6HyMKidz5kwCezKxr1agqmTYMPRjXwrEqwfyPehPU9Sw0ndg+KvzzJFbkBZPmQ\niE/p+5neny7XsdTdawSSyIAR7cXGAMB3BRI7AFqFZ6t6o//S6NDdc+aiI+dvviuo/s+ufO7L\nh38d2rnpf9MnuNjbGPx3JGYDiV3aXXf0NZz2Gxodjzj7e3zqX2U85E+CIHjVqezPNxOPZZY3\nvYna8ufko8Y8zW5gz0Yldo0KSTRl4Va+JR846NYHof3vDP508YmtNQaXkImdAsdOcE9HjgIu\nt5wVThaWpK4lKz+ZXdGoV1PwRmeOBBnP1/eX7E0o9lkivtLHTk2wHV5VMrkn2Yuxz+cUuYvv\nE8GdC+O/5L6Q2IHvFoyKBaBV6L3twfG1syx0vnTPKkx9ce23/QumjrbU0Rqy8FAln0AIlbwN\ncuus0815+EK/TScvhVQq6I2YufLIrwMkaaI8tfyr+/A+pyYSxlOfcXvd8B/ZYet4BCp4uaGK\nTyCEFLU8vT/32WpKE3XVKeTfZtqsrx6XhJp41IJRGZqpCG3V6P7pPi+vKknkoeLncqMy6/2I\nbtSrSaLQODqMRnzsi92/KW9CSdr8739ion1TycN/aNhoCJYraNg1UwwAtGEwjx0ArQKFqjR3\n66m5W44lRP579+7du3fu3n/8sqqOQAjx68r/PvzjmK5uf8/RG9J30uOSGoSQ9cJj9/bO0WBQ\nEUJ5cWMWSNCEYrtPXbIoFNoft4IZYgZTIhpTX/J47szrVF9b+v326zOvZtXW1ZbH/ZJR1m3L\nQ1zeedG6Rh1yfU1Qme3Iv9NLayU4eoRQQzlZsxw1jWVC/p3xvhxZqAtuLXpTgv+gKxijJmvU\nqylA3H4NEd6f4BU35U3YLHSY1PIqPkKoLKlMsJxXmSCtEABoxWR9yRAAQPCqP0R9VvF53CW3\nLPOfywctP3e30upyoeT9l9kcggS6VT1Z8qUPfgO3YkvTdpEld4v+c2OxKj83Ozs7Ozs7N79a\n8ngaPqirg4zwnt2WP+unqoAQolAofxZUNeqQ662dzyWHxHacekdwy83x9ubm5ubm5rZDrhEE\n8a+nKd6Nwe4oOFKgMH4F+WzgW7GNDUnsTcb+ap/uour03iMYVR23wPbzDUTdPudxocCtWEfB\nnclbsZ3nPSILhW7FSv5qEv+dTKTep1RAA/s36k1Y37PU8HQngs3xqr+sMEveil3zedi1kv4U\nwRuud72/5NxwKxZ8t+BWLACyV110u/dncy7F40K6sv7A0Z49P8/9xm6nVVebQz7k/B+fLk5k\nRpwZf1SiCxUqBj86qX7KGH5cdkFgSYDfLdoZ6Onp6enpjQtMljyehptz2ftpQuCEI9PDSmoQ\nQsrtfhyuwWrUIddbO4Xu7/7pol3yRS//PxLx39mRJ6YFPU1KSkpKSlIc0xUhxOn8KQngVr0b\nf/AOl0AI8d8/vj7V41ehKr85pKqsL/Mhb5/9aRq83Kjl4zZewk9yXXXaOs8+kWWfriyO3SNm\nnrbGkvzVbF7f/CYUfJaaaNKybviPiqwLI9Zfq+ITiKh5eGLJqFPCt54B+B7JOrMEABAEwRuu\nQ95Zo5j3dBw+cqTHwH7tVMh52qj+bwprSiIYAvOZdejSq7t5O9p/56dNqfo015fYeeySAqaT\nhRqWDpOmzxg71FH58yxrKsajCz7NfyFRPF85Jn61tfJ/+tT3P5nQ2ENuoPqq/GB9gdnLtDt0\n7dXNgpzHToHT92M1jyCI4qRNgjHQmCqqbDpCiEL58tjPgycaFxI53zJDyWrGHO898UUEQXAr\n3zqpf+nzx+To97Sx4gh0U9O1Xyk6j903XLFrzKvZnFfsGvUmrO9ZauIVO15VCjkmGiFEZ2tr\nisz/B1fswHcLEjsAWoXihIBuny/ACKFQqCM3/413C5pvLbSVqdJp06HR5L/jz3264VXfyhOX\nVw9D4mh283xcWN3YeBr2YOaXVRwoVGZkWe03HHID0u/saSduCXkFtW6B8UXkbjsGtxeun6rw\n4+mN5L/kqNhGhXRx+H+qJdOO0pS/+rdTEluJ4YD576rErDzxbYkdIfGr2YyJHdGYN2F9z1IT\nEzuCIPIifzUQeenHrptJ/g2JHfhuQWIHQGvBrUg9vn3FEGdbQ201FoNGV1DUad9pyA8LAkNT\nv+zE5wb9vLRvZ0M2Q8Gkq90k75UxBdXVRSHkygRKOlPwjvUldgRBpDwMnOvl3kFPS4HBMjDp\n3N9jnP/J4CqR70GJ4mlQWdp+MgYNy+2iOzS9icrs2B1LZvbp1F5Vkclgqxh36Tt79S8Jpf/J\nIPl15b9t9bHtbKioQFNS07YZ9MPph+nilxRrTEi8qpQ1Uz0MNZSpVDpHy3hxbB65qa4279Le\nNcP6ddfR4NDpChq6hs7DJ++7HCY0H3DTEztCslezeRM7yd+E9T1LTU/sCIIo/xi2ZNqw9rrq\ndKaicbf+O67FlWcchMQOAApBfH2kGAAAANDKFb9brG6xHyFEobK5dZXip5ABQN7B4AkAAABt\nyR/uNiYmJiYmJuadnIp4X65N/O73O/5DSXc6ZHXguwXz2AEAAGhLOk8xSJ0eixBCKNV6xI/7\nl4xXr8sPubBr641UvMOI/StlFx0AMga3YgEAALQpRO3OSX1XXXouuoVCoQxceOafA9MaOxEz\nAHIDEjsAAABtT8zvJw6evhQe9SIjv4hHZWvpd+ht7zJ57uIJA0xlHRoAsgSJHQAAAACAnIDB\nEwAAAAAAcgISOwAAAAAAOQGJHQAAAACAnIDEDgAAAABATkBiBwAAAAAgJyCxAwAAAACQE5DY\nAQAAAADICUjsAAAAAADkBCR2AAAAAAByAhI7AAAAAAA5AYkdAAAAAICcgMQOAAAAAEBOQGIH\nAAAAACAnILEDAAAAAJATkNgBAAAAAMgJSOwAAAAAAOQEJHYAAAAAAHICEjsAAAAAADkBiR0A\nAAAAgJyAxA4AAAAAQE5AYgcAAAAAICcgsQMAAAAAkBOQ2AEAAAAAyAlI7AAAAAAA5AQkdgAA\nAAAAcgISOwAAAAAAOQGJHQAAAACAnIDEDgAAAABATkBiBwAAAAAgJyCxAwAAAACQE5DYAQAA\nAADICUjsAAAAAADkBCR2AAAAAABygi7rANqAkpKSs2fPVlVVyToQAAAAALQKbDZ7+vTpqqqq\nsg5EGCR2XxcQELBo0SJZRwEAAACAVoROpy9YsEDWUQiDxO7ruFwuQujUqVM9evSQdSwAAAAA\nkLG4uLjZs2fj9KC1gcROUpaWlr169ZJ1FAAAAACQserqalmHUC8YPAEAAAAAICcgsQMAAAAA\nkBOQ2AEAAAAAyAlI7AAAAAAA5AQkdgAAAAAAcgISOwAAAAAAOQGJHQAAAACAnIDEDgAAAABA\nTkBiBwAAAAAgJyCxAwAAAACQE5DYAQAAAADICUjsAAAAAADkBCR2AAAAAAByAhI7AAAAAAA5\nQZd1AADIg7y8vH/++SctLY3JZPbs2bNfv340Gg1v+vjx471793Jzc9lstp2dXZ8+faQcW3R0\n9OPHjysqKrS1tQcOHNihQ4d3794dPnw4MTGRwWD069dv4cKFLBaruZrj8/mPHj2Kioqqqakx\nMDBwc3NTVFQMCQlJTk6m0WhdunQZOHAgk8lsruYQQlwuNzQ09MWLF1wu19TU1NXVVUNDAyFU\nV1cXEhJy9erVrKwsVVXVIUOGjB07VklJ6RuaqKure/jw4fPnz2tra42NjQcNGqSlpdWMh5Ca\nmnr//v28vDxFRUV7e/vevXs3Y+VNVFVVde/evcePH797947NZnfr1m3AgAGtKsKWwOfzw8PD\no6Oja2trDQ0N3dzcdHV1W6KhkpKSkJCQpKQkOp3etWtXFxeX5j07BD19+vTChQvv379ns9n9\n+/efOHGipqbmt1UVGRn55MmTyspKHR2dgQMHtm/f/pujevbs2ZMnT6qqqnR1dQcOHGhsbPzN\nVSGEysrKQkJCHj9+nJKSwmazFRQUVFVVdXV1eTwenU4nCKIlzt9Wh2jj6mqy/7l+5ued23b/\ncvjP0OdcfvM38csvvyCEwsPDm79q0PZVV1cvX75cQUFB8LQyNze/d+9ecXHx9OnTyQwPs7Gx\niYuLk05sr1+/FsojqVSq6CcanU7fsmVLs7QYERHRuXNnwcppNJrQF5WBgcHVq1ebpTmCIP74\n4w8jIyPB+hUVFTdu3Hj37l1tbW2hI2WxWAcPHmxsE3fv3jU1NRWqx8/Pr6ampunxFxYWTp48\nmUr9z82TPn36vHr1qumVN93JkyfFfvfb2tq2kghbQmhoqIWFheDxMpnMxYsXV1VVNWMrdXV1\n27dvV1ZWbrmzg/Ty5UuhI8Ln5rJly7hcbqOqiouL69Wrl2A9VCp12rRpxcXFjY3q+fPnNjY2\nQiHNmDGjpKSksVURBMHn8/fu3cvhcETfrqKfA00/f8PDwxFCv/zyS1MqaSFtKbEbMGDAEM/9\ngiWJQdvMVf/znaFp5X7jdVHztguJHagPn88fPXo0Qqhv377nzp2Ljo4OCwtbv349h8NhMBiW\nlpYIIQ8Pj2vXrkVHR9+/f3/RokVMJpPD4cTGxrZ0bK9evVJXV2cwGAsXLgwJCYmOjr5x4wab\nzSY/iAMCAo4ePeri4kKhUBBCfn5+TWzxwYMHCgoKSkpKq1atCg0NjY6Odnd3xyemlZXVkydP\nHj165O/vr6urS6FQTp061fRjvHjxIpVK1dTU3Lp1a0RERFRU1KlTp7p3744Qwgelqqrq6+t7\n7ty5TZs2kRcVNm/eLHkTf/zxB51OV1NT27hxY1hYWHR09NmzZ/H1Kk9PTz6/ST8ly8rKevbs\niRAaNmxYUFBQdHR0SEjIwoULGQyGmpray5cvm1J50+3atQvnNAghR0fHXbt2rVy5Ul9fH7+F\nWkOELeGff/5hMpkqKipr1659+PBhdHT0hQsXHBwc8MvE4/Gaq6EFCxbgU+P48eNRUVGPHj3a\nsWMHPjtOnz7dXK0QBPHixQtFRUWEkIKCwowZM06fPr1nzx58miCEvLy8JK/q+fPnHA6HyWT6\n+vreu3cvOjr6+vXrgwcPxrl+RUWF5FXFxMSoqKgoKCgsXrz4/v370dHR165d8/DwwB+nlZWV\njT3MFStWkG9XExMTfPqT9yIUFBTwT5SJEyc2y/kLiV3zQAgpGywk/y1OPKxIo1KoCh7Tfty5\n/9j508f8/jdahUZlKHYKLa5uxnYhsQP1OXfuHEJoypQpQh/3CQkJ+JN05cqVQg8JCwtjsVg2\nNjZNzAm+ysHBgclkhoSEkCXLly9HCOFftKtWrSLLQ0NDqVQqlUr9+PHjNzRUW1sbFBS0aNEi\nDoejoKBw7NgxfGj//vsvQmjQoEFz585FCB0+fBjvn5WVZWZmpqSklJmZ2XC1N27cWLZsmbe3\n96pVq+7cuVNXVye4Q35+vrq6upGR0YcPHwTLCwsL8Ye7kZFRUdGXn3k8Hm/8+PE4KXnx4oUk\nh1ZWVqarq6urq5uYmChYzuVyJ06ciBAKDAyUpJ76rF69GiH0008/CZXfv3+fyWTa2dlFRERs\n2LDB29vb19c3ICCgUV+cTfT27VsGg6GjoyOUCpeWlvbp04dKpTIYjL59+0otHumoqqoyNjbW\n0NAQuh5ZV1c3a9YshNCJEyeapaH79+/js0PoKmBmZqapqamysnLDZ0ej4DxGU1MzOTlZsHzj\nxo046bl27Zok9fD5/F69erFYrNDQUKFN69evRwht3LhRwpD4fH7Pnj1ZLFZYWJjQpjVr1og9\nKRr25MkTCoWip6eHEFq9ejWVSrWzs8vOztbW1qbT6QwGg0qlenh4dOvWjclkxsfHN/38hcSu\neQgldoettSkUyqY7//lMz47YQ6NQTMb+1YztQmIH6uPk5MThcERvHPD5fDU1NYTQxYsXRR+1\nZMkShNCzZ89aLrCXL18ihObNmydYiH+wJiQkdO3aVVtbWzAZnTlzJkJo9uzZjW0oPDy8Q4cO\nQnc6bGxsEhISJk6cSKVSU1NTKysrtbW1ra2tyUfdvHkTIbRnz576qn306JHQ3U+EkLW19Zs3\nb8h9jh49ihC6cOGC0GMvXryI9+/Xr5/QpuLiYpxwL168WJKju3DhAkLo6NGjopuKioqUlJRc\nXFwkqUcsHo+no6NjZWUllLBi06dPRyK0tbV///33b26xUVatWoUQ0tDQ6Ny5s1CEMTExCCF8\nyef58+fSiUc6bty4Ud87s7y8XENDo0+fPs3S0A8//IDPjvpi+Pnnn5uloefPn+M3j+g18rq6\nOgsLCwqF4u7uLklVUVFRCKFFixaJbuLxeBYWFgYGBhL+Xn369ClCaOnSpWKrMjc3NzIyatRP\n39mzZyOEWCyWk5MTvhQaFxeHz19fX1+EUNeuXSkUyvXr1xFCa9eubfr525oTuzY8Kvbnt0Uq\nRms3uv+no6Wuw7KfTFQzQ7ZJWEldXd2ff/55tUGxsbEIIS6X2/zHANq46OhonNsJlWdnZxcX\nFyOE8FegkKFDh+LHtlxg+CN42LBhgoWFhYVqamqWlpaDBw/Oy8v7+PEjuWnx4sUIoWfPnjW2\nFXd39/z8fH9//0WLFiGEgoKCli9f/uLFCxcXl6dPn3bp0qV9+/ZsNtvFxQUPbsAPHDx4MJVK\nxUGKio2NHTRoUE5Ozvbt29+9e1dUVPTq1auVK1e+fv3axcWFDBs/HD+ZosdOo9GSk5OFNqmq\nqjo7O1MolPqaFluVaBMIITU1NQcHBwnrESstLS03N3fIkCFCHewQQqWlpffu3UMIOTs7R0VF\nFRUVffjw4fDhwwihsWPH3rp165sblVx0dLSKikphYaFohD179jQwMKitrUUt/DaWvgZecSUl\nJWdn55iYGD6f3/SGoqOju3btKnbMQcNnR2OR9YgeFJVKHTZsGEEQkZGRklcl9KmC0Wg0Dw+P\nzMzMrKysplfl7u6Ozw5JqsKio6MNDQ2rq6uHDRuG/+7evTtuZfHixSwWi8FgEARBp9NVVFSi\noqKafv62Zm14VGw+l6/c3lG0vHcHZe6HVxJW8u+//44cOVKSPQMDAwcMGCB5eEDucbnc6upq\nfGVOSFlZGf6jtLRUdCt+iNhNzQUHIBQbQRC4j51oAHgkWkVFRaNaWbBgAZ/Pf/jwYa9evXAH\nFxsbmzFjxtjb248bN47NZpNjJ9XV1fl8fnl5ubq6OkJIQUGBzWaTz5IQHx8fHo/38OFDcuSH\nmprazp07HR0dR48evXLlykuXLuFjpFAoqqqqYo+dwWCIrV9dXZ0gCAmffLFPo2BVFRUVfD5f\nNDNrYuU7duxIT09HCI0dOxZ3VFdTU1uwYMGQIUP69Okzb968pKSklhs7iZWWliorK5eVlYmN\nUE1Nrbq6GrXw21j6vvqK83i8qqqqbxtbLdQQ7q0oisVisVis+s6Ob2gI/1Hf64gQKi8vl7yq\nBp4chFBpaamBgUFzVSX5SOSysjJ8MV5NTY180+JWNDU1VVRUeDweLlFVVcXlTTx/W7M2fDzT\n9JTKPz4WLQ9LKmUo95CwEhcXlz/++ONKg3A+Z2ho2IzBAznAYDA0NTXfv38vugn3gEYIif3s\nTklJqW9Tc8GV44ZIdDodX0cUDSAsLAwhJDqMtAGvX7+OjIycNWsWzjxwbfjZGDt2rJubW01N\nTUpKCkEQCKHk5GQ2m01+jufk5FRUVIh9Bt6+ffv48ePp06eLzgszcuRIDw+PGzdu4GRCX1+f\nIIjU1FSxx15TU4M73AhJSkqiUCiSfPcIHZSo5ORkXV3db/5WwOEJvUYIIYIgzp07h5sWeopM\nTEyWL1+elpaGe2i1KH19/YKCArERcrnctLQ0/D3aom9j6fvqK87hcJqe1SGE9PT06mslOzu7\nsrKysU9sfn7+P//8c+PGjejo6Lq6OrKcrEdsc/jFFXumiBL7qUJKTk4me7k1vSoqldqo+WX0\n9PTy8vJwnXp6emlpaTweD7fy4sWLgoICBoOBEFJTU8vJycHlTTx/WzUZ3gZuLIQQnWU63dt3\ny64DF4NuBe0cRKFQ19/5T3fvhOurEULth//ZjO3OmDEDIdRc80EAeYK7kYmdvgT3Ov/zTzFv\nRXd3dyqVmp6e3nKB5eXl0el0Z2dnwX4qeL6DAwcOqKurd+/eXXB/POnAzp07JW8CXzYju12/\nePECITR58mT877Ztn7pD3L59OzExkclkDh8+nHzs1q1bEUKXLl0SrfbatWv1bSIIYufOnehz\n98S//voLIbR69WqhfXDfF4TQgAEDhDY9f/4cJ9wNdO8TFBoaihBauHCh6KaYmBgKhTJ16lRJ\n6qmPtbW1urp6fn6+YGF+fj5CyMDAgE6n5+bmCj0Ed07avXt3U9qVBL7za+1nYssAACAASURB\nVGRkpKamlpeXJ7jp/PnzCCFTU1MajZaTk9PSkUgTvjc3c+ZM0U1v3ryh0+ljx45tlobwFe6/\n//5bdNOWLVsQQpcvX5awqo8fP44bN04wQdHX1z906BA+93NycvAm0Q5teXl5KioqSOLOtZmZ\nmTQazc3NTXRTTk4Oh8OxtbWVMOb09HQ8mkF0U1ZWloqKip2dnYRVYZs2bUIIaWlpGRoabt68\nGSEUGBiIz18nJyf8TlZWVsY95o8ePdr087c197FrS4ldn+6WGsoMocSUzjb9tJnPnTqkN41C\noSm0+zu/OWcbgsQO1CcuLo5Op5ubmwt26ufz+fv27cMJRN++fTMyMshNtbW1eOTEnDlzWjq2\nhQsXIoQWLFhATtd0+/Zt9HkekCtXruDCuro6PEBMRUVFbC/++pw5cwYhFBwcTJbgXg1btmyp\nq6vbt28fQkhRUVFTU9PU1JRKpT569AjvFhgYyGQyraysamtrRavFSUN9QwQOHjyIEHr48CGO\nvFevXjQa7eTJk4L7REdH42kFmUymYHivX7/GF+q0tLQknHOLz+fjPnkHDhwQTJFfvXplamrK\nYDCaOJcbzmIdHR2zsrLIQvIyho+Pj+hD8LCYxo4Z/Abl5eWGhob4mXRwcCAjDAkJ4XA4+J7+\nggULWjoM6cOTd+zcuVPwdHj79m2nTp1oNFpUVFSztJKenq6srKyjo/PkyRPB8oCAAAaDUd/Z\nIert27c6OjoUCmXEiBFHjhwJCAhYv3497lkxd+5c/KadP38+PvEPHjxIvo2zsrKsra0RQgwG\n4+3btxKGjUe4L1q0SDC8jIwMOzu7Bk5bsfAo46VLlwpWlZ6e3rdvX4TQX381bgRkbm6uuro6\nvpjq6uqqpaWlqqoaEhJiZWWFEMJv44kTJyoqKhobG0dFRTX9/IXErjkVZX+ICr93+ezxbRv8\nZk32dOn3eTgPvxohpN7R+VxMfoMVNBokdqABp0+fptPpdDp92LBhK1euXLhwIZ6+ztLSctmy\nZRQKhc1me3p6+vn5eXt74xv6Tk5O5eXlLR1YZWXlwIED8bWfOXPm+Pn5TZgwAd+PwMlNnz59\nevTogT/yGAxGY0fp4t79gpe+8vPz8UhJMzMz/HmKJ2lDCFlYWCxfvnzx4sX4u0RfXz8hIUFs\ntfhHtr+/v9iteLzb+/fv8b8pKSn4O6xbt26+vr4rVqzAV0OZTCY5D7Oenp6tra2JiQnOaNls\nNpliSiIjI6Njx44IoU6dOi1cuHDlypVDhw7FEyicO3dO8nrqg2c8UVJSGj9+vJ+f39y5c/HN\nLEVFxcOHD4teDL58+TJC6MyZM01v+quioqLwGh74HWJpaYnfwPgK0IABA75hsrHWLzc3t0uX\nLgihjh07+vj4+Pn5DR8+nMFg0Gi0Y8eONWNDwcHBbDabQqEMHDhQ8OwwMDCQMNPi8/l9+/Zl\nMBhBQUGC5eXl5XhcAr7sV1lZaW9vj19HdXX1Xr164SQVIUSj0cSO3K9PeXl5v379EEKGhobe\n3t5+fn5eXl74przkc51gZWVljo6O+FoarsrT0xM/Id/2u+XevXvkbM94fhPBa0D4eNlstpOT\nU7Ocv5DYSUfdo5fvW2JmMEjsQMOePn06dOhQsjO7vr7+6tWry8rKCIK4ffu24PJipqamu3bt\nkvC3eNNxudx9+/bhvAR/H9vb2y9btkywHwyVSrW1tf2GGezwwJGOHTsKfrtXVlZu3LiR7NbD\nYDAcHBxcXFzwRz9CSFNT08fHR/QOI6m2tlZDQ8PU1FR0zrbs7Gx1dfUuXboIFhYWFi5ZsoTs\nHchiscaMGRMXF1daWurj44MvLGE4+SaTQsmVlJT4+fmRPX4UFBSGDRsWGRnZ2Hrq8+effzo4\nOJBvEpyAkhwcHF6/fo33rKurw19LzTjJWcPS0tJmz54t1Kusffv2e/fubeyKBW1IeXn5+vXr\nyY6YDAbDw8MjIiKi2Rt68+YNmRjhs2PhwoUNnB1CIiIiUD1z9xQUFHA4HAcHB/wvl8vdvn27\n4GAFKpXat2/fmJiYxsZcW1u7e/ducjYiGo3m5OR069atxtaDq9q1axeeTBhX1a9fP7G3pyWU\nmJg4adIkoXWAhE6r5jp/IbFr2yCxA5Korq5OTk4WvPFKKi8vT05OlmFvpNzc3OTkZJxrYiUl\nJaGhoVFRUY26/Spk7969CKFBgwYJHvXr16+7d+9OoVBOnjxJTr5aU1Pz/v37tLQ0SZo7cOAA\nQmjgwIGC3RDj4+Px9YybN2+KPoTP56enp79//150maAPHz6Eh4e/e/euiYkIbiIlJaW6ujnn\nPyfl5eXhQcT9+/ffsmULnU7X0dEZM2YMXvfi5cuXhYWFkyZNQggtWbKkJQJoAI/H+/Dhw5s3\nbxITEyVPO+RARkZGcnJy864kJqpRZ4cg3OW0vivQY8eOpdFoQm/7nJycR48evX79uulv45yc\nnOTk5Ga5+dCMVREEUVtbm5qa+vr168TExJycnA8fPnz8+JHL5Tbv+QuJXdsGiR0AYvH5fB8f\nH/wjeMCAAV5eXnZ2dlQqlUaj7d27tynV4jlFmUxm//79vby87O3t8doYu3btasb4W5Xt27cj\nhJYtW4Z7QQUGBuLVkMzNzalUqqqqKr5sNnbsWKld8QWt3MqVKxFCeOy5KNxv4btKxKWpNSd2\n8jjQFwAgFRQK5dChQ7dv33Zzc4uJibl69WpKSoqXl9fjx4/xGJFvrnb//v137txxd3d//vz5\n1atXk5KSPD09Hz16hMcSyh+CII4dO2ZiYuLv74/vGU2cODE2NnbWrFlVVVV8Pr+kpKRz586X\nLl26du0a2VESfOfwWjL1zQmclZVFo9HwnHDgu9KGJygGALQGgwcPxgMJm5e7u7u7u3uzV9s6\n5ebmfvjwYf78+XT6l8/kTp06nTp1CiEUEhIyaNCg2bNnT5gwQXYxglYHj2O4fPmyg4OD0KaC\ngoKQkBA7OzvBdxT4TsBLDoCU8Hi8mzdv3rlzJz09Hc/5NHXq1EZNwgnkFZ5ymRyCKgSXl5SU\nSDWm71hJScmhQ4euXr2anZ1Np9MtLCx8fHzGjBnTwGS2+fn5Fy5cePLkSXFxcbt27QYNGjRu\n3LhvuLZaVVV16dKlBw8e4AXsHR0dJ0+eLLpoIWZnZ2dvb3/kyJF+/fp5enqS5eXl5VOmTCkr\nK2vKhXPQhsn6XnAbAH3sQNMlJCR07doVn3QqKir4G4LNZp84cULWoQHZKy4uplAo5PTOQvB0\nd9KZ4gT8/vvv5DBVQVZWVh8+fBD7kPPnz+OJNigUCpmEWVpavnjxolFNh4WFtWvXDj+cXCtP\nS0tLcDpGIe/evcPr3AwdOvTAgQMXLlxYs2YNrmT+/PmNO3LQGK25jx0kdl8HiR1oopycnHbt\n2jEYjA0bNuABpFVVVUFBQWZmZhQK5cKFC7IOEMiera2tqqqq2K7uw4cPp1Ao9WUVoBndv38f\nzztjaGh4/fr1mpqa/Pz8DRs24Gtv7du3Ly0tFXpIUFAQlUo1Nja+cuUKnqMnOzt727ZtLBZL\nR0cnLS1NwqZfvnyprKzM4XAOHjxYUFBAEERpaempU6e0tbWZTGZYWFh9D0xPTx8/fjw5XQ5C\nqF27dr/++qvglNqg2UFi17ZBYgeaCA8dDQgIECrHCZ+2trbonG3gexMUFIQQcnJyEpwWh8fj\nrV27FiHUxLXLgIQ6depEoVBMTU2F1iYJDQ3Fg1o2bNggWF5bW2toaCg2gfv9998RQtOnT5ew\naXd3dzqd/vjxY6HyN2/eKCoqWltbN/zwwsLCkJCQmzdvxsTENGUOIyCh1pzYQR87AFoWn8+/\ndOmSjY0NnoRMkI6OzsqVKxctWnTv3r0RI0Y0tub09PTw8PDS0lJVVVVnZ2cZLsf+4cOHiIiI\n8vJyDQ0NZ2dnvE5u0338+DEiIqKsrExdXd3Z2bnl+iPW1NQ8evTo3bt3dDq9S5cutra20l8a\nfMyYMatWrfL39zc3Nx89erSFhUVubu6tW7eSk5NtbW0PHTok5Xi+Q3FxcQkJCQihn376ibwT\nijk7O48cOfKPP/4ICAjAS5FiYWFh6enp27Ztw2tyYLm5uWFhYQUFBZaWllevXj1+/Dg5e3l9\ncnNzQ0JCPD098dpcgjp37jxr1qxDhw7Fx8d37ty5vhrU1dVdXV0lP1ggz2SdWbYBcMUONEV2\ndjaqZyF5giAiIyMRQjt37mxUnTk5OV5eXoLJB41GmzJlCr6DI03p6ekjR44UXCyBwWDMmTOn\npKSkKdVmZmaOHj1asFo6nT5z5kwJ13htlGPHjglloh07drxz506zNySJGzdu9O7dmzxwfX39\nzZs3t/QEuQC7dOkSftrFLk+ya9cuhBCVShWcR/Dw4cMIoQcPHuB/S0tL586dKzRmYuDAgV+9\nIRsWFoYQ2r9/v9itgYGBCCGhdcOAbMEVOwC+XzweDyFU3/g4XI73kVBubq6jo2NSUtLIkSN/\n+OEHHR2d7OzsgICACxcuxMTEhIeHS23mqvT0dHt7+4yMDE9PT09PT01NzYyMjDNnzpw8eTI2\nNvbBgwfk0o2NkpGR4ejo+PHjx7Fjx3p5eWlpaWVmZp47d+63336LjY0NDQ2tb5DgN1i/fv3W\nrVuNjY39/f1tbGx4PF5oaOixY8eGDBkSGBgo/elFRo8ePXr06Pz8/MzMTDU1NbwSLpAOLpeL\n/xA7RQg+Vfl8fl1dHXk644fg/cvLywcOHBgVFTVgwIAZM2YYGhoeOXIkKCjo33//tbe3j4iI\naODVlORTggwPgK+QdWbZBsAVO9AUtbW1ioqKrq6uYreeO3cOIRQYGCh5hVOnTkUI/frrr0Ll\neIGv//3vf98eayONGjVK7OCPTZs2IYRWrFghVF5WVnb58uW1a9f6+fkdP368vssY48aNo1Ao\nZ8+eFSrfunUratYFtZ4+fUqhUOzt7YWuL75//97IyEhVVVWGq8AB6cPXYBBCYkehzpw5EyGk\nq6srWIg70h05coQgCD8/P4TQ+vXrya0jR45kMBhnzpyhUCjDhw9voOnU1FSE0Lx588RuXb9+\nPULo2bNn33JUoGW05it2kNh9HSR2oInGjx9PpVJFl3Ssrq7u0aMHm83Oz8+XsKqCggK8JLnY\nrU5OTmw2u7mWXGxYWloahULx8vIS3cTn862trdXV1QVvWp05c0ZonjYGg7FkyRKh1V0zMzOp\nVOqYMWPEVturVy8Oh9Ncqz3OmDGDQqHEx8eLbrpy5QpCaN++fc3SEGgTuFwuvinv6OjI4/EE\nNyUlJeGl5YXmECkvL+dwOJaWliUlJRoaGt26dSMHLsTGxtLp9KFDhxIEMWHChK+Oa+7Zs6ey\nsnJqaqpQeV5enq6urpGREQyJaFVac2IHS4oB0OI2b97MYrFGjhx548YNgiBwYXJy8vDhw+Pi\n4tasWYOXBpJETEwMl8sdNWqU2K2jRo2qqqqKi4trnrgbhK8fiI2EQqGMGDGiqKjo7du3uOTX\nX3+dMWOGkpLSkSNH3rx5k5ycfP36dVtb23379uELkKTIyEg+n19ftSNHjiwtLY2Pj2+WQ3j6\n9KmlpWWnTp1EN40YMYJKpT59+rRZGgJtAp1O3717N0IoIiLC3d09PT0dl9+/f9/e3r6mpkZF\nRQUPUiYpKSlt2rTp7du3AwcOLCwsHDlyJO75GhwcPHToUBqNtm3bNoTQqFGjCIJ49uxZA63v\n3LmzsrLSzc0N97fDYmJi3NzccnJydu3aJf0BPaCNgj52QP7V1tYGBQXdv3+/qKhIRUWlX79+\n48ePx0uqS0enTp2CgoImTpw4duxYPT09CwuL/Pz8hIQEPp+/cOFCoa+KhuHlB+pLBLW0tJC0\nliiQPJLMzMzly5dbWFhERETgcoSQqanpqFGjJk2adOXKlYkTJ44ePbqx1TbLIZiamordxGKx\nlJSUiouLm6Uh0FZMmzbt48ePGzZsuH//vpGRkZKSEo/Hq6mpQQipqqrevn2bnECYtGTJkqys\nrD179iCETpw4ER4e/u7du8zMTA6Hc/nyZWtra/T5fdvw22nQoEEnTpxYsGCBs7Nz+/btO3To\nkJ6enpycTKfT9+zZ88MPP7TUMQO5A78AgJyLjIzs1KnTxIkTT5w4ERQU9Ntvv82aNcvMzOyf\nf/6RZhgeHh5v3rxZu3Ztu3bt3r59y+VyJ06c+PDhw4MHDwqO/fwqfKvo48ePYrd++PCB3Kel\nSR7J5cuXKyoqdu7cSWZ1GI1GO3z4MJPJPH369DdU2yyHUF9DhYWFZWVlsODbd2jdunWxsbFD\nhgzBN/3r6ur09PSWLl2anJxsb28v9iG7du26evUqQojL5cbHx+vq6vr5+b1+/Zq88Izft199\nO82aNevVq1e+vr4cDic+Pl5BQeF///tfTEzMsmXLmvUQgbyT8a3gtgD62LVdCQkJqqqqioqK\nu3btysrKIggiPz//6NGjGhoaLBZLtNNb61dVVaWsrNyjRw+hPkAEQdTW1lpaWmpqanK5XClE\nUlxczGQyHR0dRSe4r6ysNDIyMjIywpumTZuGEKpvEua+ffsaGRmR/5aWlrJYrL59+4pWW1VV\n1aFDBwMDg+bqbLR06VKE0P3790U3/fLLLwhW8QKN0aFDh3bt2ol9n/fr14/BYBQWFko/KtBC\noI8dALKxfPnysrKyW7durVixQk9PDyGkqak5b948PI/8woULZR1go7FYrMWLF8fFxc2bN6+2\ntpYsr66unjVr1tu3b5ctWyZ2soZmp6qqOm/evIiIiCVLlghO11JeXj558uS0tDQ/Pz98MbKi\nooJOp7PZbLH1qKiolJeXC/67YMGCp0+f+vr6ClZbUVExderU1NTUlStXNldnI19fXzabPW3a\ntFevXgmW//3332vWrDExMZH+dCeg7fLz88vIyJg0aZLg+5nH4y1btiwsLMzb21tq8xCB7xz0\nsQNyq6Cg4Pbt26NGjerfv7/Qpq5du86aNevw4cMNT+beOq1fvz4qKurkyZN3797FnfYyMzOv\nX7+ekZExZsyYFStWSC2SHTt2xMbG7t+//6+//ho9erS2tnZaWtq1a9dycnKmTJkyf/58vFu7\ndu14PN779+/Fdmh79+6d4Kz9CKGtW7fGxMQcOnTo1q1bo0eP1tHRSU9Pv3btWnZ29sSJE3/8\n8cfmir99+/Znz56dPHmyjY3NiBEjevXqheex+/fff9XU1K5fv85isZqrrUbJycl58uRJbm6u\nvr6+vb295GNrgAz973//e/z48blz58zMzDw9PY2NjfPz82/evJmUlOTk5ITnNwZAGmR9ybAN\ngFuxbdSjR48QQnv37hW79eLFiwih69evSzmqZsHj8X7++WfBfKhDhw4HDhyQ/oQINTU127Zt\nE1zNzNzc/Pjx44I3Um/duoUQWrZsmejD//rrL4TQ8uXLhcpra2t37NhhYGBAVmtmZtZC65pH\nRkYOGjSIXEOdxWJNmjRJdNYJ6cjPz588ebLggu5MJtPb27uJK3kA6eDz+SdPnuzYsSP58unp\n6W3ZskVoTh8gB1rzrVi4YgfkFr5TWd8qjXhWKsG7mW0IjUZbunTp0qVLU1JSioqKNDU1O3To\nIJNImEzmmjVrVq9enZycXFJSoqOjY2RkJLTP4MGD7ezs9u3b165du0WLFpE3Uu/duzd9+nRV\nVVXc100Qg8FYtWqVn58frlZbW7vl1mDo3bv33bt3S0pK3r9/T6PRzM3N67tr3NLy8vKcnJwS\nExMHDx7s5eVlZGT0/v37wMDA48ePR0ZGhoaGqqioyCQwICEKhTJ79uzZs2enpaXl5uaqqqqa\nmZk1anQUAE0HiR2QWzjXEeo+RXr58iW5T9tV32wdUkahUMzNzRvYeu3aNVdX16VLl+7fv9/Z\n2VlBQSE2NjY6OprD4QQFBQle8JOw2qqqqrt377548YLH45mZmQ0ZMkRbW7sph6CqqopnppCh\nZcuWJSYmTpkyxdTUNDMzU1tbe9q0ad7e3lu2bNmwYcP69evxkI7WIy8v7/bt23hKjm7dunl4\neMgqJ25t8OAhWUcBvleyvmTYBsCt2LbL2tpaRUVFdOmqoqKidu3a6evri44tBS2krKxs06ZN\nZmZm+JNHS0tr9uzZKSkp31BVQECAUBrHYrHWrl0rneHALSQrK4tKpQqNC9HV1b169Sqfz7e1\ntVVWVq6qqpJ1mJ9wudx169YJ9UHU1tYWXV8OALnUmm/FwqhYIM/8/f0rKirc3NwiIyPJwvj4\neHd394yMjB07dgh2ZgItSllZeePGjUlJSeXl5cXFxXl5eSdPnjQxMWlsPSdOnJg8eTKDwdi3\nb19sbOybN28uXLhgZWW1bdu2uXPntkTk0vHDDz/w+XxjY+PAwMA3b97ExMTs2bOHQqGMHz/+\n/PnzY8aMKS8vx5eZWwNvb++tW7daWVmdP3/+zZs3sbGxv/zyC5PJnDJlyvHjx2UdHQDfN1ln\nlm0AXLFr044ePcpgMBBCnTt3dnNz6969O74u8tNPP8k6tLbk4cOHq1atmjRp0pw5c44ePVpQ\nUCCTMDIzM5WUlMzNzXNycgTLa2trR44ciRC6deuWTAJrohs3buAP5CtXruCSDx8+7N69e8KE\nCcrKygoKCniw8927d2UbJ3b79m2E0IgRIwTXAiYIIjc3t2PHjkpKShkZGbKKDQDpaM1X7CCx\n+zpI7Nq6169fe3t7d+zYUV1d3cTEZNq0aXidUyCJrKwsV1dXoR+EysrKp0+fln4wP//8M0II\nL7krJDMzk06njx07VvpRNd2wYcPwz4/9+/fX1dWtW7dO7GSET548kXWkBEEQnp6eNBpNbPZ2\n8+ZNhNCePXukHxUA0tSaEzu4FQvkn5WV1bFjxxITEwsLC1NSUs6ePWtrayvroNqGyspKd3f3\n+/fvz5kz5/nz57W1tXl5eRcuXMA95M6dOyfleGJjYykUioeHh+gmfX39Hj16xMTESDmkZhET\nE2NjY8NmswMCAlatWrV161Zra+vg4ODS0tLs7GyEEM7ztm/fLutIEUIoJiame/fugpPRkDw8\nPCgUSht9FQCQD5DYAQDqtW/fvpcvX27fvv3EiRM9evRgMBhaWlqTJ09+9uyZsbHx4sWLS0pK\npBlPeXk5g8Gob+glh8MRnPS/DSkvL9fQ0Jg/f/6zZ8/27Nnj6OgYHh4+dOhQFRUVPMUJj8fr\n2bPnH3/8gS+JyTxaVVVVsZtYLJaCgkIbfRUAkA8w3QkAUlJXVxcXF0fODdHA/CCtx/nz542M\njERXs9DW1l63bt3cuXODg4MnTZoktXj09fVra2vT0tLEziWRnJws9jISKT4+Pj4+ns/nW1hY\ndOvWrfVMMGZgYJCcnHz9+vWrV6+mpaWlpaVt3rzZ0NAwNTU1MDAQIWRqahocHGxsbHzhwoXR\no0e3hmjFbkpPT6+urm74VQCiSktLnzx5UlJSwuFw7Ozs6subAZAEXLEDQBoCAwPNzc179eo1\nfvz4sWPHduzY0c7OTnCsbivE5XITExOdnJzEjh3GC7W9fv1amiHhm7DHjh0T3XT79u2PHz+6\nu7uLfeCDBw+sra2trKzGjRvn5eXVo0ePzp07//nnny0brsTc3d0TExOfPHlibW1Np9MrKyt3\n7Njh4+Oze/fu4uJihNDBgwf19fWtrKzqm5dRytGmpaXhBUWE4CGx9b0KQFR5efnChQt1dXU9\nPDzGjx8/ePBgXV3d+fPnl5aWyjo00GbJupNfGwCDJ0ATbd26FSGko6OzevXqK1euXLhwYc6c\nOSwWi8lktpJxjmLhG2ozZ84Uu/Xjx48IoaVLl0ozJHxHkkajHTt2THB5sYcPH2pra6uoqIjt\n0X/lyhUajaasrOzj4xMYGHj58uVly5apq6tTKJSjR49KMfx6paamKioq6unp9e3bl8Ph8Hi8\nV69e3b9/f926dVQqtW/fvvhg+/Tp06FDB1kHS2RmZnI4HC0trdDQULKQz+efOHGCRqNZW1vD\n9JASKi0ttbGxQQg5ODgcPHjw6tWrhw4dcnJyQgj16NGjuLhY1gGCerXmwROQ2H0dJHagKSIj\nI6lUau/evfPz8wXLnz9/rqmpqaur25qXAdXU1Ozbt6/YTXjOi/3790s5pJSUFLxeiIWFhbe3\nt6+vr4ODA0JISUnp77//Ft0/Ozubw+EYGhomJiYKlqenp3fq1InJZAqVS0dubm5AQIC/v//e\nvXv//fdfHo/3xx9/kH0HZ82aNXfuXHyz3szMDM+wXVtbq6am5uzsLP1oRd25c0dZWRkhZG9v\n7+vr6+3tbWlpiRBq3779t006/X3y9fVFCG3cuFFoEeRt27YhhObNmyerwMBXQWLXtkFiB5pi\n+vTpFArlzZs3optOnDiBEDpx4oT0o5LQjBkzKBTKw4cPhcr5fL67uzuVSk1KSpJ+VEVFRX5+\nfmRHLg6HM3Xq1PryM39/f4RQUFCQ6Cb80Szli441NTUrVqzASxWTzMzM7t27Fx8fj29wY4aG\nhmvWrCHz/qNHjyKEdu/eLc1oG5CYmDh16lSyN5iBgcHKlSuLiopkHVebUVFRoaioSF6OFdKv\nXz8Wi1VaWir9wIAkILFr2yCxA01hbm7etWtXsZuKiooauNfZGiQlJSkpKWlrawcHB5OFBQUF\n06ZNQwh5e3vLMDaCIPLy8jIzMxu+8TdixAgWiyU0lS5JX1/fzs6uZaITg8/njxkzBiHUp0+f\nc+fORUdHh4WFbdiwQVVVlU6nBwcH8/l8R0dHCoWycuXKyspK/Cgej3f8+HEFBYX27duXlZVJ\nLVpJ8Hi8zMzMvLw8WQfS9uDMoL5MHa8L/O+//0o3KCCp1pzYwahYAFpWUVFRfavLq6mpKSgo\nFBYWSjkkyZmZmV2/fn3ChAnDhg0zMzPr0qVLcXFxZGRkVVXViBEjDhw4gBDicrl//fVXeHg4\nnrPD1dXV1dVVOgNOtbS0vrpPUVGRhoYGnv5XlI6OjjSf/4CAgBs3xuXVxQAAIABJREFUbkyZ\nMuXMmTPkkBQnJ6fJkyc7OTnNmTPn3bt3169fHzJkyK5du44fP25ra8tkMqOjo7Ozs42NjYOD\ng/EN0NaDRqPp6+vLOoo2Cf+u09HREbtVV1eX3Kct4nK5wcHB4eHhZWVlGhoaLi4ubm5uQksh\ngxYCiR0ALUtLSysjI0Pspry8vJqaGkmyExny8PB4+fLlvn37goOD79y5o6SkhFMQLy8vCoUS\nERExZcqU1NRUcn9/f38bG5vAwEDc6UrmtLS0IiMja2pqhO5+IoQIgsjMzLSwsJBaMMePH1dR\nUTl06JDQQGMLC4uNGzcuXLjwr7/+mjBhwuPHj0+ePBkYGPj48WM8OcuCBQt+/PFHNTU1qYUK\nWho+8TMzM8VuxR8arfzDoT6PHz+eMmVKSkoKWeLv729tbR0YGNi5c2cZBvadgPQZgJbVv3//\nhIQEsXPxX7x4ESHk7Ows9aAax8jIaO/evW/fvq2uri4oKLh79+748eMpFEpUVJS7u3t+fr6/\nv39SUlJRUdGrV6+WL1/+4sULFxeX9PR0WQeOEELOzs41NTXXr18X3RQSEpKXlyfN5z86OtrJ\nyUnsLGVDhw5FCEVFRSGEFBQUfHx8IiIiysrKKioqYmNj169fD1mdnOnZsyeHw7l06RKfzxfa\nRBDEpUuXlJSUevfuLZPYmiI2NnbQoEE5OTnbt29/9+4d/lhYuXLl69evXVxc8Gh60LJkfS+4\nDYA+dqApXr16RafTO3Xq9OHDB8Hy0NBQFRWV9u3bk12p2hxbW1sWixUVFSVUjrOoyZMnyyQq\nIYWFhZqamlpaWtHR0YLlCQkJxsbGioqKHz9+lE4kXC6XQqFMnDhR7FZ8R1jm3RaBNK1ZswYh\ntHDhQi6XSxbyeLylS5cihJYvXy5hPSkpKZs2bRo6dKirq+vUqVMDAwPr61QqBfb29goKCk+f\nPhUq//333ykUyoQJE2QSVbNrzX3sILH7OkjsQBMdOXKEQqEoKyvPnTv3yJEj+/fvHzNmDJ5Z\nrZUs6/4N8Ey5CxYsELvVzc2NxWK1kp7+d+7cUVBQYDAYEyZMOHjw4OHDh6dPn85iseh0+qVL\nl6QZiba2dn1jNfC1uo0bN0ozHiBbVVVVLi4uCKHOnTtv3Ljx2LFjmzdv7tKlC0KoX79+Ev7k\n27VrF15KmM1ma2pq4n5sVlZWCQkJLR2/qISEhAZ+nwwePJjJZLbmCZ4kB4ld2waJHWi6O3fu\n4JlIMSqVOnz48Ldv38o6rm936dIlhNC1a9fEbsUTccXExEg5qvrExsYKDelwcHAIDw+XchiT\n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\nHz6gZLOdwdra2sbG5ujRo2i/IbM9IyNj8uTJJBJp7dq1nRyCCboCYmJiXK3o6jU3N3fVcL/L\nqlWrxMTEpk6dmpyczNp+9uzZ4ODgYcOGubq6CkobDg4n8vLyCxcufPXq1aJFi1paWpjt379/\n9/T0rKys3LhxowDldSv4GjscHJxuR0ND4+PHj21tbSIiImymb9++/fz5U1NT83f7DA8Pp9Fo\ngYGBZDKZzbR27doDBw6EhYUtXbq046IBMAy7du2anZ3dsmXLjh07Nnr0aHFx8fT09CdPnmAY\ndubMGUNDw870zwq6ArxicqhdQ0PjP/v5+vXrixcvvn79KicnZ25u3lUKtbW1L1++7Ovra2Zm\nNnr0aCMjo5aWlufPn6elpWlqaoaHh3fVlLTw0Nra+vLly8zMTDqdPnDgQDs7O15uN45wsmfP\nnoyMjBMnTkRFRbm6uiooKHz58uXevXsNDQ0BAQHe3t6CFthtCHr3Rg8A3xWLg9NJ9u7dCwD/\n/vsvpwnVsQ0PD//dPqdPnw4AvDItOzg4KCoq/rZQbtTU1KxduxYl5AMAUVHRcePGdXmpdSqV\nqqysrKmpyVlU4MePH4qKigMGDPhPnbNmzULFHpjY2trm5OR0lciPHz96enqiYnQAoKSktGLF\nis4n8RdCwsLC+vbty3olFRUVT5w4IWhdOL8HlUo9ePDggAED0JtIIBAsLCx4bZX9LYR5Vyzu\n2P03uGOHg9NJ6urqNDQ0KBTKxYsXUfVVBoPR2toaHBxMIBDMzMyYje3n1/WdnJyc5OTkOiX6\n/0Kn00tKSvLz87uv8MCJEycAwMbGhjXBSnZ2Nip0wbWAKZP6+np0mJOT09WrVxMSEqKioubM\nmUMkEhUVFT9//tyFOltaWgoKCkpKSoQ2AWEnQWmKVVRUduzY8eLFi5cvX+7bt69fv34AsHXr\nVkGrw+kI5eXleXl5nL+aOowwO3b4VCwODk63Iykpee/ePVdX1xkzZmzatMnU1JRGo719+/b7\n9+8GBgYRERHtmcirrKy8c+dOeno6jUbr37+/goICg8H4+PGjmZkZ25F0Oj01NZWtwGsnwTCM\nLYTT5cyfPz83NzckJERXV9fCwkJFReXr169v375lMBg7duzw8vL6xbm7du1KTEzcvHnztm3b\nmI1ubm4TJ0708PCYN2/eixcvukonmUzW0tLqqt6EjcLCQn9/fz09vdjYWGaY1srKau7cuU5O\n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\n3a/xT6GiokJERMTKyopzRr6srExGRsbU1LTDnf86mtW3b99Ro0Zxtr9+/Zrrw4VAziI/Y6I3\nb94EgK1bt3Ka7ty5AwD//PMP38QwGIzIyEgAuHz5Mlcr8phfv37NT0l4xA4HB0eoaWlpAQC0\nNyIoKKisrOzChQtr1qyRkZEBAAaDAQCBgYH6+vqbNm1iq7VKoVDQ6d2NlpbWjBkz7t+/7+/v\n39raymzPzc11d3dvaWnZtGkTH2R0DBsbG1tb22PHju3fv59OpzPbExMTp0yZIioqKiYm5uvr\n+/btW6aJTqcfPXp0//79I0eOZNaVwuk8CgoKixYtevXq1bx585qampjtRUVF7u7uNTU1mzdv\n7nDnzc3Nv8gpzethYX0AuZ6Feu6wqt9lwoQJQ4YMCQoKOnv2LIOl/t6LFy9mz54tIyOzfPly\nvokB4bs+Qg5eeQJHWKitrY2Ojs7NzSUSiQYGBg4ODmzJWnE6RlJSUnx8fENDg5KSkoODA9ds\n7GivWUZGBgDcuHHDyMhoypQpTCv6ZCcSievWrfvrr78ePHgwbdo0pjUjI6Nfv37d/SoQR44c\nycvLO3DgwPXr10ePHq2oqPjp06fo6GgajXbgwAG0Pl04wTDs2rVrDg4Oq1atOnr0qL29vaSk\n5IcPH+Li4kRFRa9cuUImk729vUeNGmVpaTls2LCmpqbnz5/n5ub2798/PDwcLRDE6Sr27Nnz\n6dOn06dP37lzx8nJSVVVNScn58mTJ62trYGBge7u7h3uuV+/fqmpqTU1NehHESu1tbXFxcVs\nWZERrA8gJ6idb08ZAJBIpIiICAcHhzlz5uzdu9fW1pZMJicmJsbHx0tJSUVERKioqPBNDLBc\nH64FY1BNWH5eH2FHwBHDngA+Fdvd0On04OBgKSkp1jtTVVX1+vXrgpbWs8nIyBgxYgTrVSUQ\nCL6+vlVVVWxH0ul0LS0tZWXlgoIC+L8JSCsrK1GZbR8fH/QBumXLFqYVJa1dtWoVf14Rg8Fo\nbW3dv3+/vr4+ekUUCmXs2LG8FsILG3V1dZs3b2Z+A0lKSk6ZMiUtLQ1Zs7KyfH19mQ+Curr6\n+vXr8U3f3QSNRjt+/PiQIUPQ1RYREXF0dOx8erbz58/z+r5AlQ9RDIwTAwMDOTm5srIytvaa\nmhoNDQ1VVVX+13uoqqpas2YNWh4KADIyMjNnzmQtU8s3qFSqqqqquro65+NQVlYmJyc3aNAg\n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\nMhiMM2fOAMCjR4/4rAqnAwizY4evscMRMKqqqjdu3Jg4caKvry+DwejTp8/atWvj4uKSk5NV\nVVUjIiLIZPLatWsPHDgQFha2dOlSwaqtqKh4/vx5cXGxhISEqakpZ0VqgXD9+nVRUdHAwEDW\nxuDg4MzMzJiYGACYO3fuuHHjvnz5cu/evYaGhnXr1nl5eXVgFE1NzUWLFrG1i4uLb968edKk\nSWFhYTo6OgUFBSIiIkZGRqNGjfrFysjXr18XFxdv3769b9++bCZHR0cnJ6e7d+82Njaiido/\nDZRK5tOnT1ytWVlZAKChoYH+ra6ujomJKSwsFBMTGzZs2IgRIzq2Ig11mJWVxZbUmjmohoZG\n9611Q780goKC0HQ8K5s3bz5y5EhYWBhaQsBJS0vLy5cvs7KyGAzGwIED7ezseNWeEvjz+1vv\nLA5OBxGwY9kTwCN2fODTp0+spa7k5eUXLlzIOivk4OCgqKgoQIXNzc2rVq1iq3JmYmLCnDYS\nIAMHDjQyMuJsb2trO3DgANO7IhAIFhYWUVFRHRiCRqP9YodyUVERAJDJZNaLM2DAgF/k8f/3\n338BgNcBW7ZsAYDMzMwOSO0F0Gg0dXX1Pn36cCYZqa6uVlVV1dTUpNPpra2tGzZsYPN9DQ0N\nO5ZZ8P379wAwdepUTtOjR48AYMmSJR15Me1j4sSJIiIivLL0jRw5sl+/flxNV65cYZZGQCgr\nK3Om8xWS55dGo6mpqamrq3NGRisrK5WVlXV0dLovLIrThQhzxA7faYgjFOjp6Y0aNQrDsJyc\nnOLi4h8/fhw7doy1HCGRSKTRaIKSR6PRPD099+3bZ2xsfO7cufj4+IcPHy5fvjwrK8vGxoa1\ncLug5HHGOQCARCKtWLFCUlLSwcEhLy+vpqbmzZs3bm5uHRiCTqfT6XSuowDAunXrAEBSUvLY\nsWOvX7+Ojo5ev359eXm5i4sLmlXkqhkAeHWInFEBvuOChUAgBAUFff361dXVFRV5Q+Tn57u6\nupaVlaEs076+vjt27NDT0zt16tSbN2+ePHmyevXqL1++2Nvbo0jtbzF8+HBPT89r166tWrWq\nsbGR2X7//n1fX19paem1a9d2yavjCo1GIxAIvCKCvB7/0NBQVLZ4165dsbGxL1++3Lt3r6io\n6Ny5c3fu3MnauZA8vwQCYfv27SUlJa6uroWFhcz23NzcsWPHlpeXBwUF9aYtwDiCQdCeZQ8A\n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\nuXKFvxFCEMQvPV480RFRXHvruRcrlaiXguy+tTH6KyaIF16/fr1169a5c+cuXLhw7969+fn5\n/I5o6MvNzd21a9eCBQvmzp27ffv2zMxMrB3biv7Vq1dcj0pLSxMTE5OTk+PsEhUVTUxMVFRU\nXL16tays7KRJk8aNG4dVGJ48eXJERATb4xcuXCgvL5+VlRUdHV1dXW1vb6+kpOTk5MRkMp8+\nffr69eudO3cuW7aM9fhJkyaNHz8+Pj6+Xy4f4p3bt29TKJQVK1Zwdq1Zs4ZAIMD/RAgavvo+\n6Pd64xgAwN3q1r6fSjAN9lux9fX1c+fOxf67WXOzEAQJCgrqr2mkEBs6nb569eqOv23sB29v\n76ampqamJmlpaWVl5Z8/f7IdePv2bQCAn59fFydvaGg4evTopEmTFBQUVFRU5OXl8Xh8e3s7\n1wfb2NiMGDECRdHCwsINGzaMHTtWWFgYADB//vz09HTOx/v5+QEAGhsbe3vp0EAwNDTU1dXt\nrHfUqFEWFhYDGQ8EDTdD4VZsF0rf1SJ4qp0kLD0qiFAUnTNnzrVr1+bMmZOenk6n02k0WkpK\nysSJE0NDQzds2MDvAIemlStXnjx50srK6tGjR9iuX2lpaa6urtHR0Z6ensLCwocPHy4qKrKy\nskpJSWEwGACA+vr6Y8eOzZ8/X0ZGZvfu3V2cXEREZN26dU+ePCkpKSksLMQmzre3c9+vuaWl\nBbvTqqKiEhoampWVhZUd2bt3r6kpl7riLS0tCIIQicR++C1APEMmk1tbWzvrbW1thbWgIWjY\n6u6q2La2Ns5GZnvj27vh3infKSO88f0aFtRfrl69mpSUtHTp0rCwMKwFQRBbW9vJkyfb29uf\nOHHCz89v4Mtwf//+/dy5c48fP66vr5eQkJg6deqSJUu43nwcjF6/fn3u3DkHB4f4+HjW/Kfx\n48fHxcX5+PhcuHAhPj5+0aJF9fX1QUFB06ZNExYWlpaWLisra29vV1NTu379+qhRo7r/dAYG\nBiiKpqam2tvbs3XV1dVlZmZOmTKlY+Po0aMBAI8ePeq4mSymvb396dOn2tranAtyeyc7O/v8\n+fOvXr1qbW2Vl5d3dHRctGgR51pgqKcMDAwiIyMLCgo46xW8f//+58+fBgYGfAkMGgA1NTXn\nz59PTk6urKwUFhY2NzdfunSplpYWv+PqsR8/fvzzzz8PHjyora0VExObPHny0qVLlZSU+B3X\n4NfNkb0uzoDD4ZfHFPBuUJHvBvWtWFdXVyKRWF1dzdn18uVLAMDWrVsHOKSoqCjsbqCEhISm\npqaYmBgAQExM7Pr16wMcCY8EBgYCAN69e8fZVVZWhsfjWWXqCgsLd+zY4eDgYG5uPnfu3H/+\n+YfrrhJd+/r1K5FINDY25rx/unTpUgDAxYsXOzbW1dVJSUkpKyuXl7NvG4Mtm+ivLSJYW2vI\nyspqampim8kqKyt3thwY6j5s6zY3Nze2W/A0Gs3Ozg6Hw7169YpfsUE89fDhQ1lZWQAAlUrV\n1NTEykYKCQkdPXqU36H1zI0bN1gf/pqamhISEgAAYWHhqKgofofWLYJ8K7a7id2cTvgErA9P\n+srTEPluUCd2mpqaxsbGXLuYTCaRSJwxY8ZAxpOYmIggiKqqakJCAjbDr729/caNGwoKCkJC\nQk+ePBnIYHjE3t5eXFy8s14dHZ0xY8b07zPu27cPAGBgYHD9+vXq6urm5uYnT564uroCABwd\nHZlMJtvjo6OjcTicsrLyv//+W15e3tra+ubNG19fXwCAkZFRL5JLTocPHwYATJgwgZXGNTc3\nnz59mkqlSktLFxcX9/0phjns/2vKlCnJyckNDQ319fWJiYkTJ04EAKxatYrf0UE88fHjRxER\nEQkJicjIyLa2NhRFmUzm48ePsQHayMhIfgfYXU+fPhUSEpKXl79x4wb25YTBYCQmJqqpqSEI\nkpCQwO8Af20oJHbD2aBO7JSVlSdOnNhZL5VKdXZ2Hsh49PT0xMXFv337xtaem5tLoVAmTJgw\nkMHwiLW1taysbGe9XU9777WDBw+yTavC4XBeXl6cm1tgIiMjsa/LHTk4OPz48aPvwVRXV4uI\niOjr63MOImKrQ5YsWdL3Zxnm2traOi7QwRAIhI0bN3a2kgYa7GbOnIkgyNOnT9naq6qqlJSU\nZGRksJqUgm/ixIlkMrljcU3Mt2/fxMXFdXR0+BJVjwhyYteTxRNoW3LUiY1bYlgNzrO9DoTd\namJ2daMW4i9VVdXc3Fw6nc7ZVVBQ0NTUpKqqOmDBvH///uPHj/7+/pxl8XV0dDw8PNLS0oqK\nigYsHh5RVVX9+fNneXk5Z1dLS8uXL1948TvfuHFjYWHhiRMnFi9e7OPjs2vXrrdv30ZHR3c2\noc3X1/fbt29hYWHLli3z8vLatm3b8+fPsRrFfQ8mMTGxsbFx48aNVCqVrcvFxWX8+PE3btxA\nu5zgAf0SkUj8888/c3Nz//jjD19f30WLFoWGhn769OngwYN4PJzzPAQ1NzcnJCQ4ODhYWlqy\ndUlJSQUGBlZWVqampvIlth75/v37y5cvPTw8dHV12bqUlZWXLFmSl5eXnZ3Nl9iGhu4unmDS\nKwImGZ57VSE6KujQgTlY472b/yXeuHj0b5/slxFyQv2wwBbqd25ubo8fPw4LC1u5ciVb18GD\nB7EHDFgwWPE8rosxAQDjxo0LDw//8uXLQO6GhKJoTU0NkUjs/ox+BoNRV1dHJpOxmYKc3Nzc\nIiMjQ0NDjxw50rG9qakpNDS0ubm5p79zOp3e0NBAoVAoFEoXD5OTk1uzZk33TyshIbF06VJs\nHl7/6vo/2tTU9NWrV1VVVZy7ykI9paWltWnT0KwP/8s3WjfV19czGAxJScn+CoxfiouL29ra\nxo0bx7UXa8/Pz+dcRCVosM+HX17IwK/qGzK6m41lhDife1Vh5rM3KWUjq7G2OPvwssk/M6Ls\nN73gTXhQX61YsUJNTW39+vWnT59mjds1NDRs3Ljx77//trOzc3Bw4G+E/JKTk+Ph4SEhISEt\nLS0qKqqtrb1///6WlpYuDklPT589e7a4uLi0tDSVSjUwMDh27BjnaKi7u7uFhcWxY8d27NjR\n1NREp9OPHTs2evRoERGRXbt2IQiSlJT05s2b7gT54MEDR0dHUVFRaWlpERGRcePGRUREwLEu\naGh79erVzJkzWW80Q0PDEydOdFbQpzO1tbVbtmxRUVERFxeXkpKSkZFZunRpYWEhb0KGIEHS\nzVu2rtIUqqwXt4kbjAB5EbKkfX/dGxZAg3qOHYqiHz9+VFdXBwBIS0tPnTp18uTJ2A0yc3Pz\nqqqqgYzk/fv3AIB169Zx7V28eDHoZI/UfhcTE0Mmk3E4nKWlZUBAgLe3N7bGfsyYMRUVFVwP\nCQ8PJxAICILY2NgEBAR4enpi9VksLCzq6+vZHlxeXo6NV4mIiGBT2bC5UBISEhMnTkQQREhI\n6Pz5810HuXv3bhwORyQSnZ2dAwIC5s2bh406uLu702i0/vlF8MZ///0HAMByUE7jxo2TkpLi\nXNIBQSiKnj17lkAg4PF4W1vbgIAADw+PkSNHAgAmT57c2YRRTqwJD5qamn5+fsuWLcPej+Li\n4qmpqTyNn3eamprIZLKjoyPX3tDQUABAUlLSAEfVC8XFxTgcrrMy7OvXrwcAZGdnD3BUPSXI\n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\nRdHR0adOnfrll19iYmImT54cGxt7+fLlBg0a6EZeunSpV69e1tbWBw8efPjwYXh4+LVr127e\nvNm0adMlS5Z88803b9r77du3nZycSpYsmb2rTJkyjo6Ot27d0tc7BQDkBwUs2J37bmy5Es7N\n2vX4bPyo7h2alXBusPny8yxj9o33zvJMdxROycnJCxYs0B3fsrS0LFWq1MiRIx88eGDIGrRa\nrW7pa3br1q1LTU21s7ObPHmymZmZrtHa2nrRokWjR48+duxYcHCwrnHGjBkajebgwYNt27bN\nfLmrq+vBgwcrV648e/bsNy2D0Gg0b9q7EEImk2k0mnd8YwCAfKkgBbvon2Y1GrHimca6//jp\n365ePmVoB/Ho54H1qmx/yOI+ZPXkyZN69er5+PjExcX17NlzwIAB9vb2q1evrl69+rFjxwxW\nhouLy8uXL2/fvp29a/fu3UKImjVrZu+aOnWqTCbbu3evECIpKSk0NLRdu3bVq1fPMszc3Hzs\n2LGJiYlhYWFv2ntERERsbGz2rqioqMjISFdX1//6jgAA+VlBCnbrBiwTckv/y39s9Js7avgY\n37X7b4YtMVM/8246PMdzsii0tFqtl5fX9evXfX19IyIifvzxR39//ytXrhw6dEgul3fu3Dkq\nKsowlXTr1k0IMWvWrOxdv/76qxDCy8sre1eZMmWKFSume+DE48eP09PTs6c6HV37mx5N0b17\n94yMjByvsfvqq680Go2uPOAdPH78+JdffomMjDR2IQD+oSCtil11/6Vd1TX9qhTLbHFsNi5s\n9o76MwK6ff9F8DD3d9imWq0ODg5OTU19yxjdv5qctCpAQkNDT506NW7cuClTprze/tFHH/n7\n+3fs2HHJkiWLFi0yQCXNmzfv0qVLQECAUqmcP39+6dKlhRAvXrxYtGhRbGysmZnZwIEDc3xh\nenq6biGF7r/p6elvGiaEUCpz/iB369atSZMmS5cu1Wq1M2bMsLe3F0I8ffp09uzZq1atatWq\nlW4RLpB7arV6+fLlS5cuzfx1omLFihMnThw+fHj2FUIAjEBbcBRTysu2DsnSqMmIa1vcXGVe\n8VpSuq5lXnmb3L+v0NDQXP6PGjhwoD7fDPLS+PHjhRC3bt3KsbdcuXLVqlUzWDGJiYkdOnQQ\nQshkMldX18qVK+tyWLFixZRK5bNnz7K/RHcwb8KECVqtNi0trUiRIo0bN85x4/PmzRNChIWF\n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"
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
   "id": "e8d1e801",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:06.609221Z",
     "iopub.status.busy": "2023-05-23T13:13:06.607672Z",
     "iopub.status.idle": "2023-05-23T13:13:06.703055Z",
     "shell.execute_reply": "2023-05-23T13:13:06.701322Z"
    },
    "papermill": {
     "duration": 0.130766,
     "end_time": "2023-05-23T13:13:06.705215",
     "exception": false,
     "start_time": "2023-05-23T13:13:06.574449",
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
   "id": "eab7a24d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:06.770557Z",
     "iopub.status.busy": "2023-05-23T13:13:06.768834Z",
     "iopub.status.idle": "2023-05-23T13:13:06.940998Z",
     "shell.execute_reply": "2023-05-23T13:13:06.937934Z"
    },
    "papermill": {
     "duration": 0.208725,
     "end_time": "2023-05-23T13:13:06.944735",
     "exception": false,
     "start_time": "2023-05-23T13:13:06.736010",
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
   "id": "0438b73f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:07.009677Z",
     "iopub.status.busy": "2023-05-23T13:13:07.008199Z",
     "iopub.status.idle": "2023-05-23T13:13:07.102204Z",
     "shell.execute_reply": "2023-05-23T13:13:07.098959Z"
    },
    "papermill": {
     "duration": 0.129723,
     "end_time": "2023-05-23T13:13:07.105208",
     "exception": false,
     "start_time": "2023-05-23T13:13:06.975485",
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
   "id": "68dae346",
   "metadata": {
    "papermill": {
     "duration": 0.031932,
     "end_time": "2023-05-23T13:13:07.169555",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.137623",
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
   "id": "eb773240",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:07.238191Z",
     "iopub.status.busy": "2023-05-23T13:13:07.236499Z",
     "iopub.status.idle": "2023-05-23T13:13:07.250094Z",
     "shell.execute_reply": "2023-05-23T13:13:07.248206Z"
    },
    "papermill": {
     "duration": 0.051968,
     "end_time": "2023-05-23T13:13:07.253068",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.201100",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# install GGally package\n",
    "# install.packages('GGally')\n",
    "\n",
    "# Load the package GGally\n",
    "# library(GGally)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "08ad4a16",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:07.320572Z",
     "iopub.status.busy": "2023-05-23T13:13:07.318851Z",
     "iopub.status.idle": "2023-05-23T13:13:07.332572Z",
     "shell.execute_reply": "2023-05-23T13:13:07.330682Z"
    },
    "papermill": {
     "duration": 0.051592,
     "end_time": "2023-05-23T13:13:07.336579",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.284987",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# convert performance and promotion as categorical data \n",
    "# salespeople$promoted <- as.factor(salespeople$promoted)\n",
    "# salespeople$performance <- as.factor(salespeople$performance)\n",
    "\n",
    "# pairplot salespeople data\n",
    "# GGally::ggpairs(salespeople)\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4a648b8d",
   "metadata": {
    "papermill": {
     "duration": 0.040048,
     "end_time": "2023-05-23T13:13:07.415574",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.375526",
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
   "id": "be5ae001",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:07.483979Z",
     "iopub.status.busy": "2023-05-23T13:13:07.482507Z",
     "iopub.status.idle": "2023-05-23T13:13:07.494361Z",
     "shell.execute_reply": "2023-05-23T13:13:07.492648Z"
    },
    "papermill": {
     "duration": 0.048292,
     "end_time": "2023-05-23T13:13:07.497014",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.448722",
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
   "id": "65a325c1",
   "metadata": {
    "papermill": {
     "duration": 0.03177,
     "end_time": "2023-05-23T13:13:07.560661",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.528891",
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
   "id": "b42aeb89",
   "metadata": {
    "papermill": {
     "duration": 0.031873,
     "end_time": "2023-05-23T13:13:07.624418",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.592545",
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
   "id": "c5157077",
   "metadata": {
    "papermill": {
     "duration": 0.037376,
     "end_time": "2023-05-23T13:13:07.694824",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.657448",
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
   "id": "c548df50",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:07.764085Z",
     "iopub.status.busy": "2023-05-23T13:13:07.762570Z",
     "iopub.status.idle": "2023-05-23T13:13:07.930609Z",
     "shell.execute_reply": "2023-05-23T13:13:07.928522Z"
    },
    "papermill": {
     "duration": 0.204884,
     "end_time": "2023-05-23T13:13:07.933884",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.729000",
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
   "id": "da8b461c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:08.008301Z",
     "iopub.status.busy": "2023-05-23T13:13:08.006622Z",
     "iopub.status.idle": "2023-05-23T13:13:08.026839Z",
     "shell.execute_reply": "2023-05-23T13:13:08.024749Z"
    },
    "papermill": {
     "duration": 0.059657,
     "end_time": "2023-05-23T13:13:08.029302",
     "exception": false,
     "start_time": "2023-05-23T13:13:07.969645",
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
   "id": "90c0c7d9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:08.097029Z",
     "iopub.status.busy": "2023-05-23T13:13:08.095524Z",
     "iopub.status.idle": "2023-05-23T13:13:08.114346Z",
     "shell.execute_reply": "2023-05-23T13:13:08.112544Z"
    },
    "papermill": {
     "duration": 0.055314,
     "end_time": "2023-05-23T13:13:08.116750",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.061436",
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
   "id": "a8fd06d3",
   "metadata": {
    "papermill": {
     "duration": 0.032501,
     "end_time": "2023-05-23T13:13:08.181457",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.148956",
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
   "id": "19ca8398",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:08.249460Z",
     "iopub.status.busy": "2023-05-23T13:13:08.247916Z",
     "iopub.status.idle": "2023-05-23T13:13:08.264490Z",
     "shell.execute_reply": "2023-05-23T13:13:08.262739Z"
    },
    "papermill": {
     "duration": 0.053107,
     "end_time": "2023-05-23T13:13:08.266806",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.213699",
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
   "id": "8424ac86",
   "metadata": {
    "papermill": {
     "duration": 0.032138,
     "end_time": "2023-05-23T13:13:08.331684",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.299546",
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
   "id": "d6e1c1d4",
   "metadata": {
    "papermill": {
     "duration": 0.033775,
     "end_time": "2023-05-23T13:13:08.399853",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.366078",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 3.1 Elementary descriptive statistics of populations and samples \n",
    "### 3.1.1 Mean, variance and standard deviation \n",
    "\n",
    "While the mean value of a sample is represented by x, and mean value of the entire dataset is denoted using &mu;\\\n",
    "Standard deviation quantifies average amount of deviation from the mean."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 52,
   "id": "a1d7d11d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:08.468026Z",
     "iopub.status.busy": "2023-05-23T13:13:08.466404Z",
     "iopub.status.idle": "2023-05-23T13:13:08.483743Z",
     "shell.execute_reply": "2023-05-23T13:13:08.482002Z"
    },
    "papermill": {
     "duration": 0.053548,
     "end_time": "2023-05-23T13:13:08.486016",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.432468",
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
   "id": "a2259b72",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:08.554354Z",
     "iopub.status.busy": "2023-05-23T13:13:08.552769Z",
     "iopub.status.idle": "2023-05-23T13:13:08.574542Z",
     "shell.execute_reply": "2023-05-23T13:13:08.572893Z"
    },
    "papermill": {
     "duration": 0.058722,
     "end_time": "2023-05-23T13:13:08.576879",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.518157",
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
   "id": "493691fd",
   "metadata": {
    "papermill": {
     "duration": 0.03296,
     "end_time": "2023-05-23T13:13:08.642411",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.609451",
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
   "id": "c16e245a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:08.713437Z",
     "iopub.status.busy": "2023-05-23T13:13:08.711893Z",
     "iopub.status.idle": "2023-05-23T13:13:08.728286Z",
     "shell.execute_reply": "2023-05-23T13:13:08.726638Z"
    },
    "papermill": {
     "duration": 0.05428,
     "end_time": "2023-05-23T13:13:08.730653",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.676373",
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
   "id": "b7429bad",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-16T14:36:36.279689Z",
     "iopub.status.busy": "2023-05-16T14:36:36.247899Z",
     "iopub.status.idle": "2023-05-16T14:36:36.333720Z"
    },
    "papermill": {
     "duration": 0.033108,
     "end_time": "2023-05-23T13:13:08.796840",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.763732",
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
   "id": "a38942fb",
   "metadata": {
    "papermill": {
     "duration": 0.032869,
     "end_time": "2023-05-23T13:13:08.862579",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.829710",
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
   "id": "57283b8d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:08.962635Z",
     "iopub.status.busy": "2023-05-23T13:13:08.961129Z",
     "iopub.status.idle": "2023-05-23T13:13:08.979164Z",
     "shell.execute_reply": "2023-05-23T13:13:08.977578Z"
    },
    "papermill": {
     "duration": 0.086172,
     "end_time": "2023-05-23T13:13:08.981300",
     "exception": false,
     "start_time": "2023-05-23T13:13:08.895128",
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
   "id": "e2eb7ff8",
   "metadata": {
    "papermill": {
     "duration": 0.033583,
     "end_time": "2023-05-23T13:13:09.047477",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.013894",
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
   "id": "37409b6b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:09.116685Z",
     "iopub.status.busy": "2023-05-23T13:13:09.115100Z",
     "iopub.status.idle": "2023-05-23T13:13:09.136403Z",
     "shell.execute_reply": "2023-05-23T13:13:09.134690Z"
    },
    "papermill": {
     "duration": 0.058606,
     "end_time": "2023-05-23T13:13:09.138757",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.080151",
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
   "id": "b07d2000",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:09.208755Z",
     "iopub.status.busy": "2023-05-23T13:13:09.207140Z",
     "iopub.status.idle": "2023-05-23T13:13:09.219120Z",
     "shell.execute_reply": "2023-05-23T13:13:09.217411Z"
    },
    "papermill": {
     "duration": 0.04985,
     "end_time": "2023-05-23T13:13:09.221564",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.171714",
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
   "id": "f4ea4696",
   "metadata": {
    "papermill": {
     "duration": 0.033035,
     "end_time": "2023-05-23T13:13:09.288850",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.255815",
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
   "id": "cfa9445d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:09.364576Z",
     "iopub.status.busy": "2023-05-23T13:13:09.362704Z",
     "iopub.status.idle": "2023-05-23T13:13:09.391495Z",
     "shell.execute_reply": "2023-05-23T13:13:09.389372Z"
    },
    "papermill": {
     "duration": 0.072529,
     "end_time": "2023-05-23T13:13:09.394842",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.322313",
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
   "id": "6e281fc7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:09.472954Z",
     "iopub.status.busy": "2023-05-23T13:13:09.471275Z",
     "iopub.status.idle": "2023-05-23T13:13:09.483308Z",
     "shell.execute_reply": "2023-05-23T13:13:09.481577Z"
    },
    "papermill": {
     "duration": 0.049444,
     "end_time": "2023-05-23T13:13:09.485786",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.436342",
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
   "id": "d626d55b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:09.556190Z",
     "iopub.status.busy": "2023-05-23T13:13:09.554243Z",
     "iopub.status.idle": "2023-05-23T13:13:09.578270Z",
     "shell.execute_reply": "2023-05-23T13:13:09.576569Z"
    },
    "papermill": {
     "duration": 0.061503,
     "end_time": "2023-05-23T13:13:09.580633",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.519130",
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
   "id": "f3482fd8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:09.652417Z",
     "iopub.status.busy": "2023-05-23T13:13:09.650851Z",
     "iopub.status.idle": "2023-05-23T13:13:09.672379Z",
     "shell.execute_reply": "2023-05-23T13:13:09.670113Z"
    },
    "papermill": {
     "duration": 0.06049,
     "end_time": "2023-05-23T13:13:09.675230",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.614740",
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
   "id": "e760e572",
   "metadata": {
    "papermill": {
     "duration": 0.033455,
     "end_time": "2023-05-23T13:13:09.742071",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.708616",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 3.1.2 Covariance and Correlation \n",
    "The **covariance** measers how one changes as the other changes between two variables.\\\n",
    "\n",
    "Like **variance**, **covariance** has also two versions: **samples covariance** and **population covariance**.\\\n",
    "\n",
    "As variance and deviation, in R, we get **sample covariance** by default, so we need to transform it to get the **population covariance**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 62,
   "id": "e1a8613c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:09.812971Z",
     "iopub.status.busy": "2023-05-23T13:13:09.811297Z",
     "iopub.status.idle": "2023-05-23T13:13:09.833175Z",
     "shell.execute_reply": "2023-05-23T13:13:09.830945Z"
    },
    "papermill": {
     "duration": 0.06002,
     "end_time": "2023-05-23T13:13:09.835920",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.775900",
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
   "id": "7db530ca",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:09.906984Z",
     "iopub.status.busy": "2023-05-23T13:13:09.905299Z",
     "iopub.status.idle": "2023-05-23T13:13:09.934663Z",
     "shell.execute_reply": "2023-05-23T13:13:09.932406Z"
    },
    "papermill": {
     "duration": 0.068377,
     "end_time": "2023-05-23T13:13:09.937450",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.869073",
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
   "id": "5914029e",
   "metadata": {
    "papermill": {
     "duration": 0.034031,
     "end_time": "2023-05-23T13:13:10.005114",
     "exception": false,
     "start_time": "2023-05-23T13:13:09.971083",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### **Pearson's correlation**\n",
    "\n",
    "**Pearson's correlation** devides the **covariance** by the product of of the **standard deviationos** of the two variables.\\\n",
    "This creates a scale of -1 to 1, which gives an intuitive way of the direction and the strength of the relationship between x and y.\\\n",
    "\n",
    "-1 meaning x increases perfectly as y decreases and 1 vice versal.\\\n",
    "\n",
    "0 meaning there is no relationship between the two variables.\\\n",
    "\n",
    "As, **variance**, **covariance** and **standard deviation**, there are also sample and population versions of the correlation.\\\n",
    "**sample correlation** and **population correlation** \n",
    "\n",
    "As before, R calculates by default the sample correlation.\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 64,
   "id": "820d3fa0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:10.077697Z",
     "iopub.status.busy": "2023-05-23T13:13:10.076192Z",
     "iopub.status.idle": "2023-05-23T13:13:10.095995Z",
     "shell.execute_reply": "2023-05-23T13:13:10.094177Z"
    },
    "papermill": {
     "duration": 0.059067,
     "end_time": "2023-05-23T13:13:10.098956",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.039889",
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
   "id": "7532e465",
   "metadata": {
    "papermill": {
     "duration": 0.033871,
     "end_time": "2023-05-23T13:13:10.167833",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.133962",
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
   "id": "dfadc11e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:10.239825Z",
     "iopub.status.busy": "2023-05-23T13:13:10.238266Z",
     "iopub.status.idle": "2023-05-23T13:13:10.257453Z",
     "shell.execute_reply": "2023-05-23T13:13:10.255689Z"
    },
    "papermill": {
     "duration": 0.058573,
     "end_time": "2023-05-23T13:13:10.260274",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.201701",
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
   "id": "fe49b3bb",
   "metadata": {
    "papermill": {
     "duration": 0.034369,
     "end_time": "2023-05-23T13:13:10.329003",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.294634",
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
   "id": "ca60d92f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:10.401340Z",
     "iopub.status.busy": "2023-05-23T13:13:10.399845Z",
     "iopub.status.idle": "2023-05-23T13:13:10.417851Z",
     "shell.execute_reply": "2023-05-23T13:13:10.416042Z"
    },
    "papermill": {
     "duration": 0.056944,
     "end_time": "2023-05-23T13:13:10.420187",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.363243",
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
   "id": "2bd37c22",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:10.493525Z",
     "iopub.status.busy": "2023-05-23T13:13:10.491863Z",
     "iopub.status.idle": "2023-05-23T13:13:10.511553Z",
     "shell.execute_reply": "2023-05-23T13:13:10.509807Z"
    },
    "papermill": {
     "duration": 0.058161,
     "end_time": "2023-05-23T13:13:10.513935",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.455774",
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
   "id": "525306e3",
   "metadata": {
    "papermill": {
     "duration": 0.034451,
     "end_time": "2023-05-23T13:13:10.582833",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.548382",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Distribution of random variables\n",
    "\n",
    "### Sampling of random variables\n",
    "\n",
    "When we describe variables as random, we are assuming that they are ***independent*** and ***identically distributed***.\\\n",
    "\n",
    "The value of one variables is not influenced by the other.\\"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fb162cc9",
   "metadata": {
    "papermill": {
     "duration": 0.034375,
     "end_time": "2023-05-23T13:13:10.651924",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.617549",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 3.2.2 Standard errors, the t-distribution and confidence intervals\n",
    "**Standard error**: the standard deviation of the sample mean \n",
    "- Standard error for the mean: SE (Standard Error) = standard deviation / square-rooted n (sample size) \n",
    "\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 68,
   "id": "23fbe4dc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:10.723894Z",
     "iopub.status.busy": "2023-05-23T13:13:10.722271Z",
     "iopub.status.idle": "2023-05-23T13:13:10.757475Z",
     "shell.execute_reply": "2023-05-23T13:13:10.755707Z"
    },
    "papermill": {
     "duration": 0.073781,
     "end_time": "2023-05-23T13:13:10.759819",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.686038",
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
   "id": "8cfa4a1d",
   "metadata": {
    "papermill": {
     "duration": 0.03465,
     "end_time": "2023-05-23T13:13:10.830197",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.795547",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Normal distribution is frequency or probablity distribution\\\n",
    "\n",
    "**t-distribution** or **student's distribution** is used **when the sample size is small**, and population standard deviation is unknown.\\\n",
    "\n",
    "Significance level of 5% = Confidence level of 95%.\\\n",
    "\n",
    "**Degree of Freedom (df)** refers to the number of independent variable for testing statistical parameters"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 69,
   "id": "9f6b03e4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:10.906323Z",
     "iopub.status.busy": "2023-05-23T13:13:10.904746Z",
     "iopub.status.idle": "2023-05-23T13:13:10.917537Z",
     "shell.execute_reply": "2023-05-23T13:13:10.915762Z"
    },
    "papermill": {
     "duration": 0.055004,
     "end_time": "2023-05-23T13:13:10.920192",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.865188",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# isntall r-makrdown package \n",
    "#install.packages(\"rmarkdown\")\n",
    "\n",
    "# then load r-markdown package so it can be accessed \n",
    "#library(rmarkdown)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 70,
   "id": "a7e776bd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:10.995341Z",
     "iopub.status.busy": "2023-05-23T13:13:10.993694Z",
     "iopub.status.idle": "2023-05-23T13:13:11.005753Z",
     "shell.execute_reply": "2023-05-23T13:13:11.004083Z"
    },
    "papermill": {
     "duration": 0.051144,
     "end_time": "2023-05-23T13:13:11.008269",
     "exception": false,
     "start_time": "2023-05-23T13:13:10.957125",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# install tinytex package to export the r-markdown document to pdf or html\n",
    "#install.packages(\"tinytex\")\n",
    "\n",
    "# load the tinytex package\n",
    "#library(tinytex)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 71,
   "id": "4d13d779",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:11.083650Z",
     "iopub.status.busy": "2023-05-23T13:13:11.082086Z",
     "iopub.status.idle": "2023-05-23T13:13:11.100625Z",
     "shell.execute_reply": "2023-05-23T13:13:11.098815Z"
    },
    "papermill": {
     "duration": 0.058621,
     "end_time": "2023-05-23T13:13:11.102992",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.044371",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# The Student t Distribution \n",
    "# parameters (p = vector of probabilities, )\n",
    "# help(qt)\n",
    "\n",
    "# get standard error multiple for 0.975 \n",
    "t <- qt(p = 0.975, df = n - 1)\n",
    "# qt() computes the quantiles of t-distribution\n",
    "# p: probablities, confidence level, or cumulative probability\n",
    "# p = 1 - 0.05 / 2 = 0.975 which indicates confidence level of 95% and significance level of 5%\n",
    "# df = degree of freedom, sample size \n",
    "# t: t-score, is a standard deviation from the mean"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "00eecd5d",
   "metadata": {
    "papermill": {
     "duration": 0.034533,
     "end_time": "2023-05-23T13:13:11.172791",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.138258",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "What we observed is that, with a **standard error** of 1.98 on other side of sample mean will give us a **confidence interval** of 95% that our range contains the true population mean.\\\n",
    "\n",
    "Thus, we can calculate the upper and lower bound of our mean.\\\n",
    "\n",
    "Interval: range of values "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 72,
   "id": "48d40b6b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:11.248576Z",
     "iopub.status.busy": "2023-05-23T13:13:11.246886Z",
     "iopub.status.idle": "2023-05-23T13:13:11.274111Z",
     "shell.execute_reply": "2023-05-23T13:13:11.272323Z"
    },
    "papermill": {
     "duration": 0.067241,
     "end_time": "2023-05-23T13:13:11.276940",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.209699",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'the lower bound is 3.47995410046738, the upper bound is 3.81704589953262'"
      ],
      "text/latex": [
       "'the lower bound is 3.47995410046738, the upper bound is 3.81704589953262'"
      ],
      "text/markdown": [
       "'the lower bound is 3.47995410046738, the upper bound is 3.81704589953262'"
      ],
      "text/plain": [
       "[1] \"the lower bound is 3.47995410046738, the upper bound is 3.81704589953262\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "lower_bound = sample_mean - t * se \n",
    "upper_bound = sample_mean + t * se \n",
    "paste0('the lower bound is ', lower_bound,', ', 'the upper bound is ', upper_bound)\n",
    "\n",
    "# past0() function combines multiples string into single string \n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a9cd4358",
   "metadata": {
    "papermill": {
     "duration": 0.035651,
     "end_time": "2023-05-23T13:13:11.347487",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.311836",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 3.3 Hypothesis testing \n",
    "We start with **null hypothesis**, and only reject it when statistical of sample data renders it very unlikely, in wihch case we confirm the alternative hypothesis exist in population.\n",
    "\n",
    "Most hypothesis testing returns a p-value: maximum probability of finding the sample results when **null hypothesis** is true for the population.\\\n",
    "\n",
    "**Alpha** or **significance level** is usually set to 0.05, but varies depending on the consequence of errorneous consequence, if the **p-value** is less than 0.05, meaning that the results observe in the sample are so extrerme that they would only occur 1 in 20 times if the **null hypothesis** is true."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3d655468",
   "metadata": {
    "papermill": {
     "duration": 0.035183,
     "end_time": "2023-05-23T13:13:11.417947",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.382764",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 3.3.1 Testing for a difference in means (Welch's t-test)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 73,
   "id": "d2a11866",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:11.492115Z",
     "iopub.status.busy": "2023-05-23T13:13:11.490526Z",
     "iopub.status.idle": "2023-05-23T13:13:11.514929Z",
     "shell.execute_reply": "2023-05-23T13:13:11.512588Z"
    },
    "papermill": {
     "duration": 0.064271,
     "end_time": "2023-05-23T13:13:11.517827",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.453556",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "154.974242424242"
      ],
      "text/latex": [
       "154.974242424242"
      ],
      "text/markdown": [
       "154.974242424242"
      ],
      "text/plain": [
       "[1] 154.9742"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Take a subset of salespeople with performance 1 and 4 \n",
    "perf1 <- subset(salespeople, subset = performance == 1)\n",
    "perf4 <- subset(salespeople, subset = performance == 4)\n",
    "\n",
    "# calculate the difference observed \n",
    "diff <- mean(perf4$sales) - mean(perf1$sales)\n",
    "diff"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 74,
   "id": "f42df2d2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:11.592004Z",
     "iopub.status.busy": "2023-05-23T13:13:11.590256Z",
     "iopub.status.idle": "2023-05-23T13:13:11.629426Z",
     "shell.execute_reply": "2023-05-23T13:13:11.627310Z"
    },
    "papermill": {
     "duration": 0.079408,
     "end_time": "2023-05-23T13:13:11.632441",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.553033",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "88.5676251730619"
      ],
      "text/latex": [
       "88.5676251730619"
      ],
      "text/markdown": [
       "88.5676251730619"
      ],
      "text/plain": [
       "[1] 88.56763"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "221.380859675423"
      ],
      "text/latex": [
       "221.380859675423"
      ],
      "text/markdown": [
       "221.380859675423"
      ],
      "text/plain": [
       "[1] 221.3809"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# calculate the standard error of the combined sample \n",
    "se <- sqrt(sd(perf1$sales) ^ 2 / length(perf1$sales) + sd(perf4$sales) ^ 2 / length(perf4$sales))\n",
    "\n",
    "# calculate the t-score / t-statistic \n",
    "t <- qt(p = 0.975, df = 100.98)\n",
    "# degree of freedom of the two samples is given 100.98\n",
    "\n",
    "# Calculate 95% confidence interval \n",
    "lower_bound <- diff - t * se \n",
    "lower_bound\n",
    "\n",
    "upper_bound <- diff + t * se \n",
    "upper_bound\n",
    "\n",
    "# test if zero is inside this interval \n",
    "(0 <= upper_bound) & (0 >= lower_bound)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "06fcc6d9",
   "metadata": {
    "papermill": {
     "duration": 0.035889,
     "end_time": "2023-05-23T13:13:11.704891",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.669002",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Since the logical function of the last line resturns `FALSE`, which means that 0 is not "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 75,
   "id": "52736f13",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:11.779426Z",
     "iopub.status.busy": "2023-05-23T13:13:11.777898Z",
     "iopub.status.idle": "2023-05-23T13:13:11.790779Z",
     "shell.execute_reply": "2023-05-23T13:13:11.789096Z"
    },
    "papermill": {
     "duration": 0.053868,
     "end_time": "2023-05-23T13:13:11.793878",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.740010",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# help(pt)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 76,
   "id": "2adeca4e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:11.868975Z",
     "iopub.status.busy": "2023-05-23T13:13:11.867501Z",
     "iopub.status.idle": "2023-05-23T13:13:11.894166Z",
     "shell.execute_reply": "2023-05-23T13:13:11.892152Z"
    },
    "papermill": {
     "duration": 0.067083,
     "end_time": "2023-05-23T13:13:11.897043",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.829960",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "4.62947760684427"
      ],
      "text/latex": [
       "4.62947760684427"
      ],
      "text/markdown": [
       "4.62947760684427"
      ],
      "text/plain": [
       "[1] 4.629478"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "1.09321191002792e-05"
      ],
      "text/latex": [
       "1.09321191002792e-05"
      ],
      "text/markdown": [
       "1.09321191002792e-05"
      ],
      "text/plain": [
       "[1] 1.093212e-05"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# get actual t-statistic \n",
    "t_actual <- diff / se\n",
    "t_actual \n",
    "\n",
    "2 * pt(t_actual, df = 100.98, lower = FALSE)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e80bdf33",
   "metadata": {
    "papermill": {
     "duration": 0.036485,
     "end_time": "2023-05-23T13:13:11.970086",
     "exception": false,
     "start_time": "2023-05-23T13:13:11.933601",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "In R, we need no more to perform these calculations ourselves as hypothesis test , **`t.test()`** is part of the R package as below.\\\n",
    "\n",
    "**`t.test()`** performs the a hypothesis test of difference in means of two samples and confirms p-value and 95% confidence interval.\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 77,
   "id": "997ef365",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:12.044669Z",
     "iopub.status.busy": "2023-05-23T13:13:12.043122Z",
     "iopub.status.idle": "2023-05-23T13:13:12.061915Z",
     "shell.execute_reply": "2023-05-23T13:13:12.060151Z"
    },
    "papermill": {
     "duration": 0.058737,
     "end_time": "2023-05-23T13:13:12.064208",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.005471",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tWelch Two Sample t-test\n",
       "\n",
       "data:  perf4$sales and perf1$sales\n",
       "t = 4.6295, df = 100.98, p-value = 1.093e-05\n",
       "alternative hypothesis: true difference in means is not equal to 0\n",
       "95 percent confidence interval:\n",
       "  88.5676 221.3809\n",
       "sample estimates:\n",
       "mean of x mean of y \n",
       " 619.8909  464.9167 \n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "t.test(perf4$sales, perf1$sales)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ca38efc6",
   "metadata": {
    "papermill": {
     "duration": 0.035608,
     "end_time": "2023-05-23T13:13:12.135496",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.099888",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Since the **p-value** is less than alpha value of 0.05, thus the null hypothesis that there is no difference between the means of the two samples are rejected.\n",
    "\n",
    "The standard alpha or **&alpha; = 0.5** is associated with the term *statistically significant*, therefore with the result that we had above, we can say that there is a statistically significant difference in the means of the two samples.\n",
    "\n",
    "In software packages, hypothesis tests that meet with &alpha; = 0.1 are usually marked with `.`, 0.05 with `*`, and 0.01 with `**`, 0.001 with `***`."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f94e4087",
   "metadata": {
    "papermill": {
     "duration": 0.035689,
     "end_time": "2023-05-23T13:13:12.206711",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.171022",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 3.3.2 Testing for a non-zero correlation between two variables (*t*-test for correlation)\n",
    "\n",
    "If we are given a sample of two variables and asked if the two variables are correlated. \n",
    "\n",
    "Our null hypothesis would be that there is no correlation between the two variables.\n",
    "\n",
    "The t-statistic between the two samples with the length of **n** associated with the correlation **r** is often notated as **t*** and is defined as:\n",
    "\n",
    "` t* = (r * sqrt(n - 2)) / sqrt(1 - r ^ 2)`\n",
    "\n",
    "**t*** can be converted to an associated **p-value**.\n",
    "\n",
    "The calculation of the **t*** for the correlation between sales and customer rating and convert it to **p-value**.\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 78,
   "id": "847f09af",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:12.283977Z",
     "iopub.status.busy": "2023-05-23T13:13:12.282189Z",
     "iopub.status.idle": "2023-05-23T13:13:12.308004Z",
     "shell.execute_reply": "2023-05-23T13:13:12.306259Z"
    },
    "papermill": {
     "duration": 0.067906,
     "end_time": "2023-05-23T13:13:12.310204",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.242298",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "8.64795221209219e-11"
      ],
      "text/latex": [
       "8.64795221209219e-11"
      ],
      "text/markdown": [
       "8.64795221209219e-11"
      ],
      "text/plain": [
       "[1] 8.647952e-11"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# remove the NA from sales people \n",
    "salespeople <- salespeople[complete.cases(salespeople),]\n",
    "\n",
    "# calculate t_star / t* using the calculations above \n",
    "r <- cor(salespeople$sales, salespeople$customer_rate)\n",
    "n <- nrow(salespeople)\n",
    "t_star <- (r * sqrt(n - 2)) / sqrt(1 - r ^ 2)\n",
    "\n",
    "# convert to p-value on t-distributioin with n-2 degrees of freedom \n",
    "\n",
    "2 * pt (t_star, df = n - 2, lower = FALSE)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3e1499bc",
   "metadata": {
    "papermill": {
     "duration": 0.036678,
     "end_time": "2023-05-23T13:13:12.383477",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.346799",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The function `cor.test()` performs the above non-zero correlation hypothesis test on our samples.   "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 79,
   "id": "d013c706",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:12.458718Z",
     "iopub.status.busy": "2023-05-23T13:13:12.457051Z",
     "iopub.status.idle": "2023-05-23T13:13:12.475504Z",
     "shell.execute_reply": "2023-05-23T13:13:12.473755Z"
    },
    "papermill": {
     "duration": 0.058315,
     "end_time": "2023-05-23T13:13:12.477831",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.419516",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tPearson's product-moment correlation\n",
       "\n",
       "data:  salespeople$sales and salespeople$customer_rate\n",
       "t = 6.6952, df = 348, p-value = 8.648e-11\n",
       "alternative hypothesis: true correlation is not equal to 0\n",
       "95 percent confidence interval:\n",
       " 0.2415282 0.4274964\n",
       "sample estimates:\n",
       "     cor \n",
       "0.337805 \n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cor.test(salespeople$sales, salespeople$customer_rate)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ca687b03",
   "metadata": {
    "papermill": {
     "duration": 0.036604,
     "end_time": "2023-05-23T13:13:12.551422",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.514818",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Thus, we can conclude from the above result that there is a significant correlation between sales and customer rating"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f0bbe038",
   "metadata": {
    "papermill": {
     "duration": 0.03738,
     "end_time": "2023-05-23T13:13:12.625550",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.588170",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 3.3.3 Testing for difference in frequency distribution between different categories in data set (Chi-square test)\n",
    "\n",
    "If we are asked the relationship between the performance category of the salespeople data and the likelihood of their promotion.\n",
    "\n",
    "Thus the null hypothesis would be there is no relationship between the performance category and their likelihood of promition. \n",
    "\n",
    "We can create a contingency table of view the relationship between the performance category and the promotion. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 80,
   "id": "771a2a6b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:12.702014Z",
     "iopub.status.busy": "2023-05-23T13:13:12.700382Z",
     "iopub.status.idle": "2023-05-23T13:13:12.724528Z",
     "shell.execute_reply": "2023-05-23T13:13:12.722823Z"
    },
    "papermill": {
     "duration": 0.065054,
     "end_time": "2023-05-23T13:13:12.726838",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.661784",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   \n",
       "     1  2  3  4\n",
       "  0 50 85 77 25\n",
       "  1 10 25 48 30"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# create a contingency table of the relationship between the performance and the promotion\n",
    "contingency <- table(salespeople$promoted, salespeople$performance)\n",
    "contingency\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0a2f7a49",
   "metadata": {
    "papermill": {
     "duration": 0.03622,
     "end_time": "2023-05-23T13:13:12.800233",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.764013",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "0 signifies not promoted and 1 sifnifies promotion"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 81,
   "id": "152a07e9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:12.876336Z",
     "iopub.status.busy": "2023-05-23T13:13:12.874643Z",
     "iopub.status.idle": "2023-05-23T13:13:12.896171Z",
     "shell.execute_reply": "2023-05-23T13:13:12.894289Z"
    },
    "papermill": {
     "duration": 0.062011,
     "end_time": "2023-05-23T13:13:12.898574",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.836563",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>1</dt><dd>19.3714285714286</dd><dt>2</dt><dd>35.5142857142857</dd><dt>3</dt><dd>40.3571428571429</dd><dt>4</dt><dd>17.7571428571429</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[1] 19.3714285714286\n",
       "\\item[2] 35.5142857142857\n",
       "\\item[3] 40.3571428571429\n",
       "\\item[4] 17.7571428571429\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "1\n",
       ":   19.37142857142862\n",
       ":   35.51428571428573\n",
       ":   40.35714285714294\n",
       ":   17.7571428571429\n",
       "\n"
      ],
      "text/plain": [
       "       1        2        3        4 \n",
       "19.37143 35.51429 40.35714 17.75714 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# calculate the expected promoted and not promoted \n",
    "expected_promoted <- sum(contingency[2,]) / sum(contingency) * colSums(contingency)\n",
    "expected_promoted\n",
    "# we expect that the percentage of promotion in all categries are the same "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 82,
   "id": "f0a77471",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:12.976306Z",
     "iopub.status.busy": "2023-05-23T13:13:12.974628Z",
     "iopub.status.idle": "2023-05-23T13:13:12.993533Z",
     "shell.execute_reply": "2023-05-23T13:13:12.991872Z"
    },
    "papermill": {
     "duration": 0.060726,
     "end_time": "2023-05-23T13:13:12.995869",
     "exception": false,
     "start_time": "2023-05-23T13:13:12.935143",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>1</dt><dd>40.6285714285714</dd><dt>2</dt><dd>74.4857142857143</dd><dt>3</dt><dd>84.6428571428571</dd><dt>4</dt><dd>37.2428571428571</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[1] 40.6285714285714\n",
       "\\item[2] 74.4857142857143\n",
       "\\item[3] 84.6428571428571\n",
       "\\item[4] 37.2428571428571\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "1\n",
       ":   40.62857142857142\n",
       ":   74.48571428571433\n",
       ":   84.64285714285714\n",
       ":   37.2428571428571\n",
       "\n"
      ],
      "text/plain": [
       "       1        2        3        4 \n",
       "40.62857 74.48571 84.64286 37.24286 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# we use the same method to calculate the expected not-promoted \n",
    "expected_notpromoted <- sum(contingency[1,]) / sum(contingency) * colSums(contingency)\n",
    "expected_notpromoted"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "51db4e99",
   "metadata": {
    "papermill": {
     "duration": 0.064751,
     "end_time": "2023-05-23T13:13:13.097457",
     "exception": false,
     "start_time": "2023-05-23T13:13:13.032706",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Since we have not calculated our expected promoted and the not-promoted, we can compare them with the observed values using the difference metric \n",
    "\n",
    "`(observed - expected) ^ 2 / expected`\n",
    "\n",
    "We add up the results to get a total, also known as the `X^2` static. \n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 83,
   "id": "b96ec41e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:13.173466Z",
     "iopub.status.busy": "2023-05-23T13:13:13.171880Z",
     "iopub.status.idle": "2023-05-23T13:13:13.204632Z",
     "shell.execute_reply": "2023-05-23T13:13:13.202990Z"
    },
    "papermill": {
     "duration": 0.073312,
     "end_time": "2023-05-23T13:13:13.206981",
     "exception": false,
     "start_time": "2023-05-23T13:13:13.133669",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "17.5348887101099"
      ],
      "text/latex": [
       "17.5348887101099"
      ],
      "text/markdown": [
       "17.5348887101099"
      ],
      "text/plain": [
       "[1] 17.53489"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "8.36051655798491"
      ],
      "text/latex": [
       "8.36051655798491"
      ],
      "text/markdown": [
       "8.36051655798491"
      ],
      "text/plain": [
       "[1] 8.360517"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "25.8954052680949"
      ],
      "text/latex": [
       "25.8954052680949"
      ],
      "text/markdown": [
       "25.8954052680949"
      ],
      "text/plain": [
       "[1] 25.89541"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# calculate the difference metrics for promoted and notpromoted \n",
    "promoted <- sum((expected_promoted - contingency[2,])^2 / expected_promoted)\n",
    "promoted\n",
    "\n",
    "notpromoted <- sum((expected_notpromoted - contingency[1,])^2 / expected_notpromoted)\n",
    "notpromoted\n",
    "\n",
    "# calculcated the chi-squared statistic \n",
    "chi_sq_stat <- promoted + notpromoted\n",
    "chi_sq_stat"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "579e9b39",
   "metadata": {
    "papermill": {
     "duration": 0.037939,
     "end_time": "2023-05-23T13:13:13.282151",
     "exception": false,
     "start_time": "2023-05-23T13:13:13.244212",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We can calculate the associated p-value for this chi-squared statistic with the formula below."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 84,
   "id": "98f988b7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:13.359905Z",
     "iopub.status.busy": "2023-05-23T13:13:13.358343Z",
     "iopub.status.idle": "2023-05-23T13:13:13.378184Z",
     "shell.execute_reply": "2023-05-23T13:13:13.376334Z"
    },
    "papermill": {
     "duration": 0.0618,
     "end_time": "2023-05-23T13:13:13.381062",
     "exception": false,
     "start_time": "2023-05-23T13:13:13.319262",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.00306294645668e-05"
      ],
      "text/latex": [
       "1.00306294645668e-05"
      ],
      "text/markdown": [
       "1.00306294645668e-05"
      ],
      "text/plain": [
       "[1] 1.003063e-05"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "pchisq(chi_sq_stat, df = 3, lower.tail = FALSE)\n",
    "# df: degree of freedom is calculated by multiplying (nrows - 1) * (ncols - 1)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "31c51d61",
   "metadata": {
    "papermill": {
     "duration": 0.037095,
     "end_time": "2023-05-23T13:13:13.455894",
     "exception": false,
     "start_time": "2023-05-23T13:13:13.418799",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "In R, `chisq.test()` function helps us calculate the above steps, and returns the X^2 statistic and associated p-value  "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 85,
   "id": "985689ad",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-23T13:13:13.534117Z",
     "iopub.status.busy": "2023-05-23T13:13:13.532595Z",
     "iopub.status.idle": "2023-05-23T13:13:13.554296Z",
     "shell.execute_reply": "2023-05-23T13:13:13.552581Z"
    },
    "papermill": {
     "duration": 0.063544,
     "end_time": "2023-05-23T13:13:13.556634",
     "exception": false,
     "start_time": "2023-05-23T13:13:13.493090",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tPearson's Chi-squared test\n",
       "\n",
       "data:  contingency\n",
       "X-squared = 25.895, df = 3, p-value = 1.003e-05\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "chisq.test(contingency)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a16dba7d",
   "metadata": {
    "papermill": {
     "duration": 0.038573,
     "end_time": "2023-05-23T13:13:13.632888",
     "exception": false,
     "start_time": "2023-05-23T13:13:13.594315",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Thus, with the result above, we can reject our null hypothesis that there is no difference in the distribution of promoted and not promoted between the different categories. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "645135ab",
   "metadata": {
    "papermill": {
     "duration": 0.037293,
     "end_time": "2023-05-23T13:13:13.708132",
     "exception": false,
     "start_time": "2023-05-23T13:13:13.670839",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# 4  Linear Regression for Continuous Outcome"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "c865df75",
   "metadata": {
    "papermill": {
     "duration": 0.037528,
     "end_time": "2023-05-23T13:13:13.783142",
     "exception": false,
     "start_time": "2023-05-23T13:13:13.745614",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
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
   "duration": 16.582945,
   "end_time": "2023-05-23T13:13:13.941937",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-05-23T13:12:57.358992",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
