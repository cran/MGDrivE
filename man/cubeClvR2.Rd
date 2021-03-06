% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Cube-ClvR2.R
\name{cubeClvR2}
\alias{cubeClvR2}
\title{Inheritance Cube: 2-Locus ClvR (Cleave and Rescue)}
\usage{
cubeClvR2(
  cF = 1,
  crF = 0,
  ccF = cF,
  ccrF = crF,
  cM = 1,
  crM = 0,
  ccM = cM,
  ccrM = crM,
  dW = 0,
  drW = 0,
  ddW = dW,
  ddrW = drW,
  hSuf = 1,
  crossF = 0.5,
  crossM = 0.5,
  eta = NULL,
  phi = NULL,
  omega = NULL,
  xiF = NULL,
  xiM = NULL,
  s = NULL
)
}
\arguments{
\item{cF}{Female cutting rate, one ClvR allele}

\item{crF}{Female functional resistance rate, one ClvR allele}

\item{ccF}{Female cutting rate, two ClvR alleles}

\item{ccrF}{Female functional resistance rate, two ClvR alleles}

\item{cM}{Male cutting rate, one ClvR allele}

\item{crM}{Male functional resistance rate, one ClvR allele}

\item{ccM}{Male cutting rate, two ClvR alleles}

\item{ccrM}{Male functional resistance rate, two ClvR alleles}

\item{dW}{Female deposition cutting rate}

\item{drW}{Female deposition functional resistance rate}

\item{ddW}{Female deposition (HH) cutting rate}

\item{ddrW}{Female deposition (HH) functional resistance rate}

\item{hSuf}{Haplosufficiency level, default is completely sufficient}

\item{crossF}{Crossover rate in females, 0 is completely linked, 0.5 is unlinked, 1.0 is complete divergence}

\item{crossM}{Crossover rate in males, 0 is completely linked, 0.5 is unlinked, 1.0 is complete divergence}

\item{eta}{Genotype-specific mating fitness}

\item{phi}{Genotype-specific sex ratio at emergence}

\item{omega}{Genotype-specific multiplicative modifier of adult mortality}

\item{xiF}{Genotype-specific female pupatory success}

\item{xiM}{Genotype-specific male pupatory success}

\item{s}{Genotype-specific fractional reduction(increase) in fertility}
}
\value{
Named list containing the inheritance cube, transition matrix, genotypes, wild-type allele,
and all genotype-specific parameters.
}
\description{
Based on the Cleave-and-Rescue system of \href{https://doi.org/10.1101/2020.07.09.196253}{Oberhofer},
this is a 3-locus Cas9-based toxin-antidote system. The first locus carries the
Cas9, the second locus carries the gRNAs, and a recoded copy of an essential gene.
The third locus is the targeted essential gene. This gene can be completely
haplosufficient (\code{hSuf} = 1) or completely haploinsufficient (\code{hSuf} = 0).
It is assumed that having 2 copies of the gene (be it wild-type at the second
locus or recoded at the first) confers complete viability. Additionally, loci
1 and 2 can be linked, given \code{crM} and \code{crF}, imitating the original
2-locus ClvR system.
For this construct, the first locus will have 2 alleles, the second will have 2
alleles, and the third will have 3 alleles:
\itemize{
\item Locus 1
\itemize{
\item W: Wild-type
\item C: Cas9
}
\item Locus 2
\itemize{
\item W: Wild-type
\item G: gRNAs and recoded essential gene
}
\item Locus 3
\itemize{
\item W: Wild-type
\item R: Functional resistant
\item B: Non-functional resistant
}
}
}
\details{
Female deposition is implemented incorrectly. Right now, it is performed on
male alleles prior to zygote formation - it should happen post-zygote formation.
Since this construct doesn't have HDR, this should be fine. \cr
Additionally, it is assumed that deposition requries loaded Cas9-RNP complexes
from the mother, having Cas9 and no maternal gRNA, even in the presence of
paternal gRNA, will not result in maternal deposition mediated cleavage.

Copy-number dependent rates are based on Cas9, not gRNA. The assumption is that
RNA is easier to produce, and therefore won't limit cleavage by Cas9.
}
