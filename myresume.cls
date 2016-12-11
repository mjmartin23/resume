\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myresume}[2016/06/20 My custom resume class]
\LoadClass{article}
\RequirePackage{titlesec}
\usepackage{bold-extra}

\newcommand{\name}[1]{
	\begin{center}\bfseries\scshape\Huge
	#1
	\end{center}
}

\newcommand{\contact}[3]{
	\begin{center}
	#1 | #2 | #3
	\end{center}
}

\titleformat{\section}         % Customise the \section command 
{\Large\scshape\raggedright\vspace{-.75em}} % Make the \section headers large (\Large), small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
{\large\scshape\raggedright}
{}{0em}
{}

\let\oldSection\section
\renewcommand{\section}{
	\setlength{\parindent}{0pt}
	\oldSection
}

\newcommand{\projecttype}[1]{
	\textbf{#1}
	\newline
}

\newcommand{\project}[4]{
	#1, \textit{#2}\hfill\textbf{#3}
	\vspace{-.5em}
	\begin{itemize}
		#4
	\end{itemize}
}

\newcommand{\job}[4]{
	\textit{#1}, \textbf{#2}\hfill\textbf{#3}
	\vspace{-.5em}
	\begin{itemize}
		#4
	\end{itemize}	
}

\newcommand{\activity}[3]{
	\textit{#1}, #2\hfill\textbf{#3}\\	
}
