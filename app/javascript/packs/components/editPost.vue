<template>
  <div>
    <!-- リスト表示部分 -->
    <div>
      <p>{{ post.title }}</p>
      <!-- 書き出し分 -->
      <h6>{{ post.story_1 }}</h6>
    </div>

    <div class="row">
      <div class="col s12 m10">
        <div class="card #ffffff white">
          <div class="card-content">
            <span class="card-title">{{ post.title }}</span>
            <p>{{ post.story_1 }}</p>
            <p>{{ post.story_2 }}</p>
            <p>{{ post.story_3 }}</p>
            <p>{{ post.story_4 }}</p>
          </div>
          <div class="card-action">
            <router-link to="/">戻る</router-link>
            <span>{{ post.book_name }}</span>
          </div>
        </div>
      </div>
    </div>



  </div>


</template>


<script>
  import axios from 'axios';

  export default {
    data: function () {
      return {
        post: []
      }
    },
    mounted: function () {
      this.fetchPost()
    },
    methods: {
      fetchPost: function () {

        var id = this.$route.params.id
        axios.get('/api/posts/' + id).then((response) => {
          this.post = response.data.post 
        }, (error) => {
          console.log(error)
        })
      }
    }
  }
</script>