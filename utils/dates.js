import dayjs from "dayjs";

export const dateToFrFormat = (date: string) => {
   // TODO set to local
   return dayjs(date).format("DD/MM/YYYY HH:mm:ss");
};

export const dateToUnix = (date: string) => {
   // TODO set to local
   return dayjs(date).unix();
};

// export const pathname = location.pathname.replace("/", "");
