@def title = "Statistics and Machine Learning (Extra Resources)"
@def hascode = true
@def date = Date(2021, 12, 14)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# 5.9 Statistics and Machine Learning (Extra Resources)

\toc

## Documentation

* Julia Documentation
    * ~~~ <a href="https://alan-turing-institute.github.io/MLJ.jl/dev/" target="_blank">MLJ.jl</a> ~~~

## Additional Resources
Here are some additional machine learning and MLJ-related resources:

**_Machine Learning_**
* ~~~ <a href="https://www.datacamp.com/courses/machine-learning-for-everyone" target="_blank">Machine Learning for Everyone - DataCamp</a> ~~~ : This is a freely accessible module (with email login) through DataCamp, an online platform for learning data science skills. Self-paced and no coding required, this module provides an introduction to machine learning concepts and approaches through short videos and exercises. 
* ~~~ <a href="https://mathigon.org/course/machine-learning/introduction" target="_blank">Machine Learning - Data Gymnasia</a> ~~~ : An interactive overview of machine learning with examples. Slightly heavier emphasis on statistical notation for those interested.

**_MLJ_**
* ~~~ <a href="https://alan-turing-institute.github.io/MLJ.jl/dev/" target="_blank">MLJ Home</a> ~~~ : Central resource for everything MLJ. Some useful quick links from the site are listed below:
    * ~~~ <a href="https://alan-turing-institute.github.io/MLJ.jl/dev/about_mlj/#Installation" target="_blank">Installation</a> ~~~
    * ~~~ <a href="https://alan-turing-institute.github.io/MLJ.jl/dev/getting_started/#Getting-Started" target="_blank">Getting Started</a> ~~~
    * ~~~ <a href="https://alan-turing-institute.github.io/MLJ.jl/dev/mlj_cheatsheet/" target="_blank">Cheatsheet</a> ~~~
* ~~~ <a href="https://juliaai.github.io/DataScienceTutorials.jl/" target="_blank">MLJ Data Science Tutorials</a> ~~~ : Website with tutorials for MLJ.jl and related packages. Follow along through the web page or download the notebook and run the code yourself. Below are some helpful sub-sections on this site:
    * ~~~ <a href="https://juliaai.github.io/DataScienceTutorials.jl/#getting_started_with_mlj" target="_blank">Getting Started with MLJ</a> ~~~ : Includes 10 brief “How to” examples with MLJ
    * ~~~ <a href="https://juliaai.github.io/DataScienceTutorials.jl/#introduction_to_statistical_learning_with_mlj" target="_blank">Introduction to Statistical Learning with MLJ</a> ~~~ : Includes 8 labs, each covering a different set of topics (e.g. linear regression, tree-based models, clustering)
    * ~~~ <a href="https://juliaai.github.io/DataScienceTutorials.jl/#end_to_end_examples_with_mlj" target="_blank">End-to-end examples with MLJ</a> ~~~ : For a health-related example, see the Breast Cancer Wisconsin model comparison walk-through
* ~~~ <a href="https://www.youtube.com/watch?v=qSWbCn170HU" target="_blank">JuliaCon 2020</a> ~~~ : YouTube video workshop on MLJ with interactive follow-along ~~~ <a href="https://github.com/ablaom/MachineLearningInJulia2020" target="_blank">tutorials</a> ~~~

**_Python Resources for Machine Learning_**
* ~~~ <a href="https://scikit-learn.org/stable/index.html" target="_blank">Scikit-learn - Home</a> ~~~
    * ~~~ <a href="https://scikit-learn.org/stable/user_guide.html" target="_blank">User Guide</a> ~~~
    * ~~~ <a href="https://scikit-learn.org/stable/tutorial/index.html" target="_blank">Tutorials</a> ~~~
* ~~~ <a href="https://www.datacamp.com/community/tutorials/machine-learning-python" target="_blank">Scikit-learn tutorial - DataCamp</a> ~~~ : An interactive introduction to ML in Python from exploratory data analysis and preprocessing to constructing an unsupervised model using KMeans
* ~~~ <a href="https://developers.google.com/machine-learning/crash-course/prereqs-and-prework" target="_blank">Machine Learning Crash Course - Google</a> ~~~ : An interactive, self-based crash course on ML with videos, exercises, and supplementary readings. Complete the ~~~ <a href="https://developers.google.com/machine-learning/crash-course/prereqs-and-prework" target="_blank">prerequisites and prework section</a> ~~~ to determine the most effective way of navigating the course based on your background experience
* ~~~ <a href="https://developers.google.com/machine-learning/problem-framing" target="_blank">Problem Framing - Google</a> ~~~ : One hour course addressing how to define a ML problem and identify potential solutions
* ~~~ <a href="https://towardsdatascience.com/machine-learning/home" target="_blank">Machine Learning - Towards Data Science</a> ~~~ : Short readings on topics in ML, some examples are listed here:
    * ~~~ <a href="https://towardsdatascience.com/all-machine-learning-models-explained-in-6-minutes-9fe30ff6776a" target="_blank">Overview of ML Models</a> ~~~
    * ~~~ <a href="https://towardsdatascience.com/decision-trees-in-machine-learning-641b9c4e8052" target="_blank">Decision Trees in ML</a> ~~~
* ~~~ <a href="https://prismia.chat/#course-library" target="_blank">Prismia Course Library</a> ~~~ : Prismia-format mini-courses on topics in data science. Run through message-by-message or click "show all" on the light gray button in the top right. Courses of interest include:
    * ~~~ <a href="https://prismia.chat/shared/data-science-pipeline" target="_blank">Data Science Pipeline</a> ~~~ (basics in pandas, Plotly, and Scikit-learn)
    * ~~~ <a href="https://prismia.chat/shared/machine-learning" target="_blank">Machine Learning</a> ~~~

## Julia-Python Syntax Summary Table

Also see this helpful ~~~ <a href="https://browndsi.github.io/docs/cheatsheets/jpr-cheatsheet.pdf" target="_blank">cheatsheet</a> ~~~ for Julia-Python-R syntax

Prisma Course Library: ~~~ <a href="https://prismia.chat/shared/python-to-julia" target="_blank">Python to Julia</a> ~~~

~~~
<table>
  <tr>
    <th></th>
    <th>Julia</th>
    <th>Python</th>
  </tr>
  <tr>
    <th style="text-align:left" rowspan="2">Commenting</th>
    <td><pre><code class="language-julia"># this is a comment</td>
    <td><pre><code class="language-python"># this is a comment</td>
  </tr>
  <tr>
    <td><pre><code class="language-julia">#= This is a 
    multi-line
    comment =#</td>
    <td><pre><code class="language-python">'''This is a
    multi-line
    comment'''</td>
  </tr>
  <tr>
    <th style="text-align:left" rowspan="3">Types</th>
    <td><code>Int</td>
    <td><code>int</td>
  </tr>
  <tr>
    <td><code>Float</td>
    <td><code>float</td>
  </tr>
  <tr>
    <td><code>String</td>
    <td><code>string</td>
  </tr>
    <tr>
    <th style="text-align:left" rowspan="4">Logical Operators</th>
    <td><code>&&</td>
    <td><code>and</td>
  </tr>
  <tr>
    <td><code>||</td>
    <td><code>or</td>
  </tr>
  <tr>
    <td><code>!</td>
    <td><code>not</td>
  </tr>
  <tr>
    <td><code>!=, ==, >, < , >=, <=</td>
    <td><code>!=, ==, >, < , >=, <=</td>
  </tr>
  <tr>
    <th style="text-align:left" rowspan="3">Control Flow</th>
    <td style="text-align:left">
        <pre><code class="language-julia">if i <= n
    # insert code
elseif i <= n2
    # insert code
else
    # insert code 
end

x > 0 ? 1 : -1
</code></pre>
    </td>
    <td style="text-align:left">
        <pre><code class="language-python">if i <= n:
    # insert code
elif i <= n2:
    # insert code
else:
    # insert code

1 if x > 0 else -1
</code></pre>
    </td>
  </tr>
  <tr>
    <td style="text-align:left">
        <pre><code class="language-julia">for i in 1:n
    # insert code
end

for i = 1:n
    # insert code
end
</code></pre>
    </td>
    <td style="text-align:left">
        <pre><code class="language-python">for i in range(1, n+1):
    # insert code
</code></pre>
    </td>
  </tr>
  <tr>
    <td style="text-align:left">
        <pre><code class="language-julia">while i <= n
    # insert code
end
</code></pre>
    </td>
    <td style="text-align:left">
        <pre><code class="language-python">while i <= n:
    # insert code
</code></pre>
    </td>
  </tr>
  <tr>
    <th style="text-align:left">Arrays</th>
    <td style="text-align:left"><pre><code class="language-julia">array = []</td>
    <td style="text-align:left"><pre><code class="language-python">array = []</td>
  </tr>
  <tr>
    <td style="text-indent:5px">Length</td>
    <td style="text-align:left"><pre><code class="language-julia">length(array)</td>
    <td style="text-align:left"><pre><code class="language-python">len(array)</td>
  </tr>
  <tr>
    <td>First Element</td>
    <td style="text-align:left"><pre><code class="language-julia">array[1]</td>
    <td style="text-align:left"><pre><code class="language-python">array[0]</td>
  </tr>
  <tr>
    <td>Last Element</td>
    <td style="text-align:left"><pre><code class="language-julia">array[end]</td>
    <td style="text-align:left"><pre><code class="language-python">array[-1]</td>
  </tr>
  <tr>
    <td rowspan="3">Subsets</td>
    <td style="text-align:left">
        <pre><code class="language-julia"># [start,end]
array[start_index:end_index]
</code></pre>
    </td>
    <td style="text-align:left">
        <pre><code class="language-python"># [start, end)
array[start_index:end_index]
</code></pre>
    </td>
  </tr>
  <tr>
    <td style="text-align:left">
        <pre><code class="language-julia">array[2:end]</code></pre>
    </td>
    <td style="text-align:left">
        <pre><code class="language-python">array[1:]</code></pre>
    </td>
  </tr>
  <tr>
    <td style="text-align:left">
        <pre><code class="language-julia">array[1:length(array)-1]</code></pre>
    </td>
    <td style="text-align:left">
        <pre><code class="language-python">array[:-1]</code></pre>
    </td>
  </tr>
  <tr>
    <td>Appending</td>
    <td style="text-align:left"><pre><code class="language-julia">append!(array, element)</td>
    <td style="text-align:left"><pre><code class="language-python">array.append(element)]</td>
  </tr>
  <tr>
    <th style="text-align:left">Functions</th>
    <td style="text-align:left"><pre><code class="language-julia">function function_name(x,y)
    # insert code
end
</td>
    <td style="text-align:left"><pre><code class="language-python">def function_name(x,y):
    # insert code
</td>
  </tr>
  <tr>
    <th style="text-align:left">Sets</th>
    <td style="text-align:left"><pre><code class="language-julia">s = Set()</td>
    <td style="text-align:left"><pre><code class="language-python">s = set()</td>
  </tr>
  <tr>
    <td>Adding Element</td>
    <td style="text-align:left"><pre><code class="language-julia">push!(s,element)</td>
    <td style="text-align:left"><pre><code class="language-python">s.add(element)</td>
  </tr>
  <tr>
    <td>Removing Element</td>
    <td style="text-align:left"><pre><code class="language-julia">delete!(s,element)</td>
    <td style="text-align:left"><pre><code class="language-python">s.remove(element)</td>
  </tr>
  <tr>
    <td>Union</td>
    <td style="text-align:left"><pre><code class="language-julia">union(set1,set2)</td>
    <td style="text-align:left"><pre><code class="language-python">set1|set2</td>
  </tr>
  <tr>
    <td>Intersection</td>
    <td style="text-align:left"><pre><code class="language-julia">intersect(set1,set2)</td>
    <td style="text-align:left"><pre><code class="language-python">set1&set2</td>
  </tr>
  <tr>
    <th style="text-align:left">Dictionaries</th>
    <td style="text-align:left"><pre><code class="language-julia">d = Dict()</td>
    <td style="text-align:left"><pre><code class="language-python">d = {}
d = dict()
</td>
  </tr>
  <tr>
    <td>Accessing</td>
    <td style="text-align:left"><pre><code class="language-julia">d[key] = value</td>
    <td style="text-align:left"><pre><code class="language-python">d[key] = value</td>
  </tr>
  <tr>
    <td>Iterating</td>
    <td style="text-align:left"><pre><code class="language-julia">for (key, value) in d:
    print(key,value)
end
</td>
    <td style="text-align:left"><pre><code class="language-python">for key, value in d.items():
    print(key,value)
</td>
  </tr>
  <tr>
    <th style="text-align:left">DataFrames</th>
    <td style="text-align:left"><pre><code class="language-julia">using DataFrames</td>
    <td style="text-align:left"><pre><code class="language-python">import pandas as pd</td>
  </tr>
  <tr>
    <td>Creating DataFrame</td>
    <td style="text-align:left"><pre><code class="language-julia">df = DataFrame(
    A = [element_1, element_2, ...], 
    B = [element_1, element_2, ...])
</td>
    <td style="text-align:left"><pre><code class="language-python">data = 
    {
      'A': [element_1, element_2, ...],
      'B': [element_1, element_2, ...],
      ...
    }

df = pd.DataFrame(data)</tr>
<tr>
    <td>Accessing Column</td>
    <td style="text-align:left"><pre><code class="language-julia">df.A
df[“A”]
</td>
    <td style="text-align:left"><pre><code class="language-python">df.A
df[“A”]
</td>
  </tr>
  <tr>
    <td>Sorting DataFrame</td>
    <td style="text-align:left"><pre><code class="language-julia">sort(df, [:row1, :row2])</td>
    <td style="text-align:left"><pre><code class="language-python">df.sort_values(by=['row1', 'row2'])</td>
  </tr>
  <tr>
    <td>Reading CSV as DataFrame</td>
    <td style="text-align:left"><pre><code class="language-julia">using CSV
df = CSV.read([filename])
</td>
    <td style="text-align:left"><pre><code class="language-python">import pandas as pd 
df = pd.read_csv([filename])
</td>
  </tr>
</table>
~~~