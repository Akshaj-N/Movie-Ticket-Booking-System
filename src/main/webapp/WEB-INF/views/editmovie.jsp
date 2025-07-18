<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="dheader.jsp"></jsp:include>
<div class="container-fluid">
    <h3 class="text-center heading">Edit Movie</h3>
    <div class="row">
        <div class="col-sm-8">
            <form method="post">
                <input type="hidden" name="mid" value="${movie.mid }">
                <div class="form-group form-row">
                    <label class="col-sm-4 col-form-label">Movie Name</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="mname" value="${movie.mname}">
                    </div>
                </div>
                <div class="form-group form-row">
                    <label class="col-sm-4 col-form-label">Release Date</label>
                    <div class="col-sm-8">
                        <input type="date" required class="form-control" value="${movie.reldate}" name="reldate">
                    </div>
                </div>
                <div class="form-group form-row">
                    <label class="col-sm-4 col-form-label">Director</label>
                    <div class="col-sm-8">
                        <input type="text"  
                               required class="form-control" name="director" value="${movie.director}">
                    </div>
                </div>
                <div class="form-group form-row">
                    <label class="col-sm-4 col-form-label">Actors</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="actor" value="${movie.actor}">
                    </div>
                </div>
                <div class="form-group form-row">
                    <label class="col-sm-4 col-form-label">Actress</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" name="actress"  value="${movie.actress}">
                    </div>
                </div>
                <div class="form-group form-row">
                    <label class="col-sm-4 col-form-label">Trailer Link</label>
                    <div class="col-sm-8">
                        <textarea class="form-control" rows="4" name="trailer">${movie.trailer}</textarea>
                    </div>
                </div>
                <div class="form-group form-row">
                    <label class="col-sm-4 col-form-label">Description :</label>
                    <div class="col-sm-8">
                        <textarea name="descr" class="form-control">${movie.descr}</textarea>
                    </div>
                </div>
                
                <input type="submit" class="btn btn-success" value="Save Movie">
                <a onclick="return confirm('Are you sure to delete this movie ?')" 
                href="/delmovie/${movie.mid}" class="btn btn-danger">Delete Movie</a>
            </form>
        </div>
        <div class="col-sm-4">
        	<h4 class="p-2">Movie Banner</h4>
        	<img src="/${movie.banner }" alt="${movie.banner }" style="height:300px;" class="img-thumbnail">
        	
        	<h4 class="p-2">Movie Poster</h4>
        	<img src="/${movie.poster }" alt="${movie.poster }" class="img-thumbnail">
        </div>
    </div>
</div>
<jsp:include page="dfooter.jsp"></jsp:include>