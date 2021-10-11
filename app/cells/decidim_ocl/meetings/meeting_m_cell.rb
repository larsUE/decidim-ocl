# frozen_string_literal: true

module DecidimOCL
  module Meetings
    # Modifications to make the /meetings list more compact
    module MeetingMCell

      def has_authors?
        false
      end

      def has_image?
        true
      end

      def render_top?
        false
      end

      def date
        render
      end

      def title
        present(model).title
      end

      private

      def resource_image_path
        'organization-default-image.png'
      end

      def followers_count
        if model.respond_to?(:followers_count)
          model.followers_count
        else
          model.followers.count
        end
      end

      def description
        nil
      end

      def statuses
        []
      end

      def has_actions?
        false
      end

      def has_badge?
        false
      end

      def show_footer_actions?
        false
      end
    end
  end
end
