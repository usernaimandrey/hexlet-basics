# frozen_string_literal: true

class Web::Admin::Languages::UploadsController < Web::Admin::Languages::ApplicationController
  def create
    @upload = resource_language.uploads.build(uploader: 'website')

    if @upload.save
      ExerciseLoaderJob.perform_later(@upload.id)

      redirect_to admin_uploads_path
    else
      redirect_to admin_languages_path
    end
  end
end
