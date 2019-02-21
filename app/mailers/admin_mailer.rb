class AdminMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
 
  def welcome_email(attendance)
    #on récupère l'instance attendance pour ensuite pouvoir la passer à la view en @user
    @attendance = attendance
    @user = User.find(Event.find(Attendance.find(@attendance.id).event_id).admin_id)


    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Nouvelle inscription !') 
  end
end


