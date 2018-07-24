$( document ).ready(function(){

  //================= mobile sidebar slide js =======================
  $(".button-collapse").sideNav();

  //================= select js =======================
  $('select').material_select();


  //====the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
  $('.modal').modal();


  //================= Initialize collapse button =================
  $(".sidebar-menu").sideNav();
  // Initialize collapsible (uncomment the line below if you use the dropdown variation)
  //$('.collapsible').collapsible();


  //================= remove place holder on click =================
  $('input,textarea').focus(function(){
    $(this).data('placeholder',$(this).attr('placeholder')).attr('placeholder','');
  }).blur(function(){
     $(this).attr('placeholder',$(this).data('placeholder'));
  });


  //================= datatable responsive js =================
  $('table').DataTable({
    responsive: true,
    dom: 'Bfrtip',
    buttons: [ 'copy', 'csv', 'excel', 'pdf', 'print']
  });


 //================= notifications js =================
  $('.notifications').dropdown({
      inDuration: 300,
      outDuration: 225,
      constrainWidth: true, // Does not change width of dropdown to that of the activator
      hover: true, // Activate on hover
      gutter: 0, // Spacing from edge
      belowOrigin: false, // Displays dropdown below the button
      alignment: 'left', // Displays dropdown with edge aligned to the left of button
      stopPropagation: false, // Stops event propagation
     
    }
  );

      


  

})