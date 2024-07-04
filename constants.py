from logging import Logger
import logging

for handler in logging.root.handlers[:]:
    logging.root.removeHandler(handler)

logging.basicConfig(
    filename="/home/t-ashutoshs/home/causal-llm-bfs/logs/experiment.log",
    format="%(asctime)s, %(levelname)-8s [%(filename)s:%(lineno)d] %(message)s",
    filemode="w",
)
logger = logging.getLogger(name="pc_algorithm")
logger.setLevel(logging.DEBUG)