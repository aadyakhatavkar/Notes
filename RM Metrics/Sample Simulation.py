def simulate_ols(n_sim=1000, n_obs=50, beta0=0, beta1=0.5):
    """Simulates OLS estimation for a static/exogenous DGP: y = beta0 + beta1*x + u.

    Args:
        n_sim (int): Number of simulations to run. Defaults to 1000.
        n_obs (int): Number of observations per simulation. Defaults to 100.
        beta0 (float): True intercept value. Defaults to 0.
        beta1 (float): True slope coefficient. Defaults to 0.5.

    Returns:
        list[float]: List of errors of beta1 estimates for each simulation.
    """

    # Create container to store results
    results_ols_errors = []

    # Initialize the RNG
    rng = np.random.default_rng()

    # Core simulation loop
    for _ in range(n_sim):
        # 1. Draw data
        x = rng.normal(size=n_obs)
        u = rng.normal(size=n_obs)
        y = beta0 + beta1 * x + u

        # 2. Run OLS estimation
        W = np.column_stack([np.ones(n_obs), x])
        beta_hat = np.linalg.inv(W.T @ W) @ W.T @ y

        # 3. Compute error
        results_ols_errors.append(beta_hat[1]-beta1)

    return results_ols_errors