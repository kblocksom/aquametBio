% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calcFishOthrMets.r
\name{calcFishOtherMets}
\alias{calcFishOtherMets}
\title{Calculate other subsets of fish metrics}
\usage{
calcFishOtherMets(
  indata,
  inTaxa = NULL,
  sampID = "UID",
  dist = "IS_DISTINCT",
  ct = "TOTAL",
  taxa_id = "TAXA_ID",
  vel = "VELOCITY",
  migr = "MIGRATORY",
  reprod = "REPROD",
  temp = "TEMP",
  nonnat = "NONNATIVE"
)
}
\arguments{
\item{indata}{Input data frame containing variables as identified
in the arguments for \emph{sampID}, \emph{dist}, \emph{ct},
\emph{taxa_id}, as well as the optional variable
for non-native status in \emph{nonnat}.}

\item{inTaxa}{Data frame containing fish taxalist, along with autecology
traits. At a minimum, this taxalist must contain at least one of the
variables matching \emph{migr}, \emph{vel}, \emph{reprod}, \emph{temp}.
The variable specified in the argument \emph{taxa_id}
must match that in \emph{indata}.}

\item{sampID}{sampID A character vector containing the names of all
variables in indf that specify a unique sample. If not specified,
the default is \emph{UID}.}

\item{dist}{A string with the name of the distinctness variable,
which is assumed to have only values of 0 or 1. If not specified,
the default is \emph{IS_DISTINCT}.}

\item{ct}{A string with the name of the count variable. If not
specified, the default is \emph{TOTAL}.}

\item{taxa_id}{A string with the name of the taxon ID variable
in \emph{indata} that matches that in \emph{inTaxa}. The default
value is \emph{TAXA_ID}.}

\item{vel}{A strings with the name of the variable in the
\emph{inTaxa} taxalist containing velocity preference values.
Valid values include R (Rheophil), P (Pool), O (Other), or
blank, if unknown. The default value is \emph{VELOCITY}.}

\item{migr}{A string with the name of the variable in
\emph{inTaxa} containing migratory status value. Valid
values include N (No), Y (Yes), and blank if unknown. The
default value is \emph{MIGRATORY}.}

\item{reprod}{A string with the name of the variable in
\emph{inTaxa} containing reproductive trait values. Valid
values include C (Clean, coarse lithophil), D (Drifter),
G (Guarder), O (Other), or blank if unknown. The default
value is \emph{REPROD}.}

\item{temp}{A string with the name of the variable in
\emph{inTaxa} containing the temperature preference values.
Valid values include WM (warm), CD (cold water), CL (cool water),
or blank if unknow. The default value is \emph{TEMP}.}

\item{nonnat}{A string with the name of the optional variable in
\emph{inCts} containing non-native status. Valid values are 'Y' for
non-native and 'N' for native. The default name
is \emph{NONNATIVE}.}
}
\value{
A data frame containing the variables in sampID and
the fish metrics as additional variables. The names of
metrics include  RHEONTAX, RHEOPIND, RHEOPTAX, LOTNTAX, LOTPIND,
LOTPTAX,  MIGRNTAX, MIGRPIND, MIGRPTAX,  LITHNTAX, LITHPIND,
LITHPTAX,  COLDNTAX, COLDPIND, COLDPTAX, TOTLNIND,
and TOTLNTAX.
\href{https://github.com/USEPA/aquametBio/blob/main/inst/NRSA_Fish_Metric_Descriptions.pdf}{NRSA_Fish_Metric_Descriptions.pdf}

If a non-native status variable is included, these metrics are also
calculated:
NAT_RHEONTAX, NAT_RHEOPIND, NAT_RHEOPTAX, NAT_LOTNTAX,
NAT_LOTPIND, NAT_LOTPTAX, NAT_ MIGRNTAX, NAT_MIGRPIND, NAT_MIGRPTAX,
NAT_ LITHNTAX, NAT_LITHPIND, NAT_LITHPTAX, NAT_ COLDNTAX, NAT_COLDPIND,
NAT_COLDPTAX, NAT_NAT_TOTLNTAX, NAT_NAT_TOTLNIND, NAT_PIND, NAT_PTAX.
}
\description{
This function calculates other metrics using the
traits for velocity preference, migratory tendency, reproductive habits,
and temperature preference, depending on what traits are included
in the input taxalist. Native status versions of metrics are calculated
if a non-native status variable is included in the input count data.
}
\author{
Karen Blocksom \email{Blocksom.Karen@epa.gov}
}
