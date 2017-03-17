module PhysicalServerHelper::TextualSummary


  def textual_group_properties
    %i(name model productName manufacturer machineType serialNumber uuid total_memory total_cpu_cores maximum_cpu_speed)
  end

  def textual_group_relationships
    %i(host)
  end

  def textual_group_compliance

  end


  def textual_host
    {:label => _("Host"), :value => @record.host&.name, :icon =>  "pficon pficon-virtual-machine", :link => url_for(:controller =>'host', :action =>  'show', :id =>  @record.host&.id)}
  end

  def textual_name
    {:label => _("Server name"), :value => @record.name }
  end

  def textual_productName
    {:label => _("Product Name"), :value => @record.productName }
  end

  def textual_manufacturer
    {:label => _("Manufacturer"), :value => @record.manufacturer }
  end

  def textual_machineType
    {:label =>_("Machine Type"), :value =>  @record.machineType }
  end

  def textual_serialNumber
    {:label => _("Serial Number"), :value => @record.serialNumber }
  end

  def textual_uuid
    {:label => _("UUID"), :value => @record.uuid }
  end

  def textual_model
    {:label =>  _("Model"), :value  =>  @record.model}
  end

  def textual_total_memory
    {:label =>  _("Total Memory"), :value =>  "#{@record.hardware.memory_mb / 1024} GB"} if @record.try(:hardware)
  end

  def textual_total_cpu_cores  
    {:label =>  _("Total CPU cores"), :value =>  "#{@record.hardware.cpu_total_cores}"} if @record.try(:hardware)
  end

  def textual_maximum_cpu_speed
    {:label =>  _("CPU Speed"), :value =>  "#{@record.hardware.cpu_speed} GHz"} if @record.try(:hardware)
  end 

end
