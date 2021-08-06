FROM elixir:1.11.4

RUN mkdir /todolist
COPY . /todolist
WORKDIR /todolist/app
RUN mix local.hex --force
RUN mix deps.get
RUN mix do compile

CMD ["./entrypoint.sh"]