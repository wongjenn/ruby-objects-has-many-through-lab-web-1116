class Doctor
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
    binding.pry
  end

  def appointment
    @appointments
  end

  def patients
    @appointments.collect { |appts| appts.patient }
  end
end
