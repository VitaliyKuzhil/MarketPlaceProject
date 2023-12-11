from django.shortcuts import render

#
# # Create your views here.
# def register(request):
#     if request.method == 'POST':
#         register_form = UserRegisterForm(request.POST)
#         if register_form.is_valid():
#             register_form.save()
#         else:
#             register_form = UserRegisterForm()
#     context = {'register_form': register_form}
#
#     return render(request, r'user/register.html0', context)
