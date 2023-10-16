class Entrega:
    def __init__(self, nro_seguimiento, domicilio_entrega, observaciones, compra):
        self.nro_seguimiento = nro_seguimiento
        self.domicilio_entrega = domicilio_entrega
        self.observaciones = observaciones
        self.compra = compra
        self.estado_entrega: 1  # 1:'En preparación', 2: 'Despachado', 3:'Entregado'

    def get_nro_seguimiento(self):
        return self.nro_seguimiento

    def set_nro_seguimiento(self, nro_seguimiento):
        self.nro_seguimiento = nro_seguimiento

    def get_domicilio_entrega(self):
        return self.domicilio_entrega

    def set_domicilio_entrega(self, domicilio_entrega):
        self.domicilio_entrega = domicilio_entrega

    def get_observaciones(self):
        return self.observaciones

    def set_observaciones(self, observaciones):
        self.observaciones = observaciones

    def get_compra(self):
        return self.compra

    def set_compra(self, compra):
        self.compra = compra

    def get_estado_entrega(self):
        return self.estado_entrega

    def set_estado_entrega(self, estado_entrega):
        self.estado_entrega = estado_entrega
