module clm_varorb

  use shr_kind_mod , only: r8 => shr_kind_r8
  implicit none
  
  ! Orbital information needed as input to orbit_parms

  real(r8) :: eccen    ! Earth's eccentricity factor (unitless) (typically 0 to 0.1)

  ! Orbital information after processed by orbit_params

  real(r8) :: obliqr  ! Earth's obliquity in radians
  real(r8) :: lambm0  ! Mean longitude of perihelion at the vernal equinox (radians)
  real(r8) :: mvelpp  ! Earth's moving vernal equinox longitude of perihelion plus pi (radians)
#ifdef planet_mars
  real(r8) :: exo_planet_radius      ! radius ~ m
  real(r8) :: exo_surface_gravity    ! gravity ~ m/s^2
  real(r8) :: exo_diurnal            ! Length of diurnal period, solar-day ~ s
  real(r8) :: exo_ndays              ! scaler to number of Earth days
  real(r8) :: exo_porb               ! orbital period in Earth Days, for obliquity/eccentricity cycles
  real(r8) :: exo_sday               ! sidereal period
  real(r8) :: exo_rad_step           ! steps between radiation calls
#endif
end module clm_varorb
