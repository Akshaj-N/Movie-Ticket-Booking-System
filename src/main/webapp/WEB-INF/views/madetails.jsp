<jsp:include page="dheader.jsp"></jsp:include>
<div class="container">
    <h4 class="text-center p-2 border-bottom border-top mt-2">Displaying Details</h4>
    <div class="row">
        <div class="col-sm-4">
            <div class="card mb-2">
                <img src="/${movie.poster}" class="card-img-top" style="height:350px;">
                <div class="card-body">
                    <h5>${movie.mname}</h5>
                </div>
            </div>            
        </div>
        <div class="col-sm-8">
            <table class="table">
                <tbody>
                    <tr>
                        <th>Movie Name</th>
                        <th>${movie.mname}</th>
                    </tr>
                    <tr>
                        <th>Director</th>
                        <th>${movie.director}</th>
                    </tr>
                    <tr>
                        <th>Actor</th>
                        <th>${movie.actor}</th>
                    </tr>
                    <tr>
                        <th>Actress</th>
                        <th>${movie.actress}</th>
                    </tr>
                    <tr>
                        <th>Trailer</th>
                        <th><a href="/atrailer/${movie.mid}">Show Trailer</a></th>
                    </tr>                    
                </tbody>
            </table>
        </div>
    </div>
</div>
<jsp:include page="dfooter.jsp"></jsp:include>