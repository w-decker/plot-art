from scipy.interpolate import interp1d
import numpy as np
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA

# parameters
f = 0.25
tp = 100
t = np.arange(-10, 10, 1/tp)
s = 1*np.sin(2 * np.pi * f * t + 0)

X_1 = np.copy(X)
v = 2 * np.pi * f * t
for i in range(1, len(X_1)):
    tt = 0
    theta = np.arcsin(tt)
    X_1[i, :] = 1*np.sin(v + theta + i)
    tt += 0.2

def make_gauss(x):
    """Genearate a probability density function given an array of numeric values"""

    mu = np.mean(x)
    sigma = np.std(x)
    f = (1 / (sigma * np.sqrt(2 * np.pi))) * np.exp( - (x - mu) ** 2 / (2 * sigma**2))

    return(f)

X_conv = np.copy(X_1)
for i in range(0, len(X_conv)):
    y = make_gauss(X_1[i, :])
    X_conv[i, :] = np.convolve(X_1[i, 0:], y, mode='same')

pca = PCA(n_components=10)
X_pca = pca.fit(X_conv)
X_pca_cov = X_pca.get_covariance()

plt.imshow(X_pca_cov)
for i in range(0, len(X_pca_cov)):
    plt.scatter(X_pca_cov[i,:], np.arange(0, 2000, 1), cmap="Blues") ;

plt.axis('off')