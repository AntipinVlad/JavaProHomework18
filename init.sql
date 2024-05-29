CREATE TABLE public."Homework"
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    name text NOT NULL,
    description text,
    PRIMARY KEY (id)
);

CREATE TABLE public."Lesson"
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    name text NOT NULL,
    "updatedAt" date NOT NULL,
    homework_id bigint NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT homework_id_fk FOREIGN KEY (homework_id)
        REFERENCES public."Homework" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

CREATE TABLE public."Schedule"
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    name text NOT NULL,
    "updatedAt" date NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE public."Lesson_Schedule"
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    lesson_id bigint,
    schedule_id bigint,
    PRIMARY KEY (id),
    CONSTRAINT fk_lesson FOREIGN KEY (lesson_id)
        REFERENCES public."Lesson" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_schedule FOREIGN KEY (schedule_id)
        REFERENCES public."Schedule" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);